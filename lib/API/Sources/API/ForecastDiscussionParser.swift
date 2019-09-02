//
//  Created by Charlie Osmer on 9/2/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public final class ForecastDiscussionParser {
    public static let shared = ForecastDiscussionParser()

    public enum SegmentType {
        case preamble
        case sectionHeader
        case sectionSeparator
        case body
    }

    private struct Match {
        var type: SegmentType
        var range: Range<String.Index>
        var captureRange: Range<String.Index>
    }

    private let sectionHeaderRegex =
        try! NSRegularExpression(pattern: #"^\.([A-Z\p{Z}\d\/]+)\Q...\E\n"#, options: [.anchorsMatchLines])

    private let sectionSeparatorRegex =
        try! NSRegularExpression(pattern: #"\n\n&&\n\n"#, options: [])

    public init() { }

    private static func prettyPrintBody(_ body: Substring) -> String {
        return body
            .components(separatedBy: "\n\n")
            .map { (paragraph) -> String in
                var lines: [String] = []
                paragraph.enumerateLines { (line, _) in
                    if !line.isEmpty {
                        lines.append(line.trimmingCharacters(in: .whitespacesAndNewlines))
                    }
                }
                return lines.joined(separator: " ")
            }
            .joined(separator: "\n\n")
    }

    public func parse(_ discussion: String, callback: (SegmentType, String) -> Void) {
        let discussion = discussion.trimmingCharacters(in: .whitespacesAndNewlines)
        let discussionRange = NSRange(location: 0, length: discussion.utf16.count)

        let sectionHeaderMatches: [Match] = sectionHeaderRegex
            .matches(in: discussion, options: [], range: discussionRange)
            .compactMap { (match) in
                precondition(match.numberOfRanges == 2)

                guard let range = Range(match.range(at: 0), in: discussion) else {
                    return nil
                }

                guard let captureRange = Range(match.range(at: 1), in: discussion) else {
                    return nil
                }

                return Match(type: .sectionHeader, range: range, captureRange: captureRange)
            }

        let sectionSeparatorMatches: [Match] = sectionSeparatorRegex
            .matches(in: discussion, options: [], range: discussionRange)
            .compactMap { (match) in
                precondition(match.numberOfRanges == 1)

                guard let range = Range(match.range, in: discussion) else {
                    return nil
                }

                return Match(type: .sectionSeparator, range: range, captureRange: range)
            }

        let matches = (sectionHeaderMatches + sectionSeparatorMatches)
            .sorted(by: { $0.range.lowerBound < $1.range.lowerBound })

        if matches.isEmpty {
            callback(.body, String(discussion[...]))
            return
        }

        let preamble = discussion[..<matches[0].range.lowerBound]
        if !preamble.isEmpty {
            callback(.preamble, String(preamble))
        }

        for (match1, match2) in zip(matches, matches.dropFirst()) {
            callback(match1.type, String(discussion[match1.captureRange]))

            let body = discussion[match1.range.upperBound..<match2.range.lowerBound]
            if !body.isEmpty {
                callback(.body, Self.prettyPrintBody(body))
            }
        }

        let lastMatch = matches.last!
        callback(lastMatch.type, String(discussion[lastMatch.captureRange]))

        let footer = discussion[lastMatch.range.upperBound...]
        if !footer.isEmpty {
            callback(.body, Self.prettyPrintBody(footer))
        }
    }
}
