//
//  Created by Charlie Osmer on 9/2/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct ForecastDiscussionParser {
    public enum FragmentType {
        case preamble
        case sectionHeader
        case sectionSeparator
        case paragraphTitle
        case body
        case footer
    }

    private struct Match {
        var type: FragmentType
        var range: Range<String.Index>
        var captureRange: Range<String.Index>

        static func make(type: FragmentType, text: String, result: NSTextCheckingResult) -> Match? {
            switch result.numberOfRanges {
            case 1:
                guard let range = Range(result.range, in: text) else {
                    return nil
                }
                return Match(type: type, range: range, captureRange: range)
            case 2:
                guard let range = Range(result.range(at: 0), in: text) else {
                    return nil
                }
                guard let captureRange = Range(result.range(at: 1), in: text) else {
                    return nil
                }
                return Match(type: type, range: range, captureRange: captureRange)
            default:
                fatalError("unexpected number of ranges (\(result.numberOfRanges))")
            }
        }
    }

    private struct Fragment {
        var type: FragmentType
        var value: Substring
    }

    private static let sectionHeaderRegex =
        try! NSRegularExpression(pattern: #"^\.([A-Z\p{Z}\d\/]+)\Q...\E\n*"#, options: [.anchorsMatchLines])

    private static let sectionSeparatorRegex =
        try! NSRegularExpression(pattern: #"\n\n&&\n\n"#, options: [])

    private static let paragraphTitleRegex =
        try! NSRegularExpression(pattern: #"^([A-Z\p{Z}\d]+)\Q...\E\n"#, options: [.anchorsMatchLines])

    private let discussion: String

    public init(discussion: String) {
        self.discussion = discussion.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    public func parse(callback: (FragmentType, String) -> Void) {
        if discussion.isEmpty {
            return
        }

        let fragments = Self.parseSections(in: discussion)
            .flatMap { (fragment) -> [Fragment] in
                switch fragment.type {
                case .body:
                    return Self.parseParagraphs(in: fragment.value)
                default:
                    return [fragment]
                }
            }

        for fragment in fragments {
            switch fragment.type {
            case .body:
                callback(fragment.type, fragment.value.removingManualLineBreaks())
            default:
                callback(fragment.type, String(fragment.value))
            }
        }
    }

    private static func parseSections(in text: String) -> [Fragment] {
        assert(!text.isEmpty)
        let textRange = NSRange(location: 0, length: text.utf16.count)

        let sectionHeaders: [Match] = Self.sectionHeaderRegex
            .matches(in: text, options: [], range: textRange)
            .compactMap { Match.make(type: .sectionHeader, text: text, result: $0) }

        let sectionSeparators: [Match] = Self.sectionSeparatorRegex
            .matches(in: text, options: [], range: textRange)
            .compactMap { Match.make(type: .sectionSeparator, text: text, result: $0) }

        let sectionBounds = (sectionHeaders + sectionSeparators)
            .sorted(by: { $0.range.lowerBound < $1.range.lowerBound })

        if sectionBounds.isEmpty {
            return [Fragment(type: .body, value: text[...])]
        }

        var fragments: [Fragment] = []

        // Everything up to the first section header.
        let preamble = text[..<sectionBounds.first!.range.lowerBound]
        if !preamble.isEmpty {
            fragments.append(Fragment(type: .preamble, value: preamble))
        }

        for (match1, match2) in zip(sectionBounds, sectionBounds.dropFirst()) {
            fragments.append(Fragment(type: match1.type, value: text[match1.captureRange]))

            let body = text[match1.range.upperBound..<match2.range.lowerBound]
            if !body.isEmpty {
                fragments.append(Fragment(type: .body, value: body))
            }
        }

        let lastSection = sectionBounds.last!
        fragments.append(Fragment(type: lastSection.type, value: text[lastSection.captureRange]))

        // Everything after the last section separator.
        let footer = text[sectionBounds.last!.range.upperBound...]
        if !footer.isEmpty {
            fragments.append(Fragment(type: .footer, value: footer))
        }

        return fragments
    }

    private static func parseParagraphs(in text: Substring) -> [Fragment] {
        assert(!text.isEmpty)
        let text = String(text)

        let titles: [Match] = Self.paragraphTitleRegex
            .matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
            .compactMap { Match.make(type: .paragraphTitle, text: text, result: $0) }

        if titles.isEmpty {
            return [Fragment(type: .body, value: text[...])]
        }

        var fragments: [Fragment] = []

        for (title1, title2) in zip(titles, titles.dropFirst()) {
            fragments.append(Fragment(type: title1.type, value: text[title1.captureRange]))

            let body = text[title1.range.upperBound..<title2.range.lowerBound]
            if !body.isEmpty {
                fragments.append(Fragment(type: .body, value: body))
            }
        }

        if let title = titles.last {
            fragments.append(Fragment(type: .paragraphTitle, value: text[title.captureRange]))

            let body = text[title.range.upperBound...]
            if !body.isEmpty {
                fragments.append(Fragment(type: .body, value: body))
            }
        }

        return fragments
    }
}
