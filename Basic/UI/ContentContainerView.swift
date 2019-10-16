//
//  ContentContainerView.swift
//  Basic
//
//  Created by Charles Osmer on 10/15/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct ContentContainerView<ContentView, ControlView>: UIViewControllerRepresentable where ContentView: View, ControlView: View {
    let content: () -> ContentView
    let controls: () -> ControlView

    init(@ViewBuilder content: @escaping () -> ContentView, @ViewBuilder controls: @escaping () -> ControlView) {
        self.content = content
        self.controls = controls
    }

    func makeUIViewController(context: Context) -> ContentContainerController<ContentView, ControlView> {
        return ContentContainerController(
            content: UIHostingController(rootView: content()),
            controls: UIHostingController(rootView: controls())
        )
    }

    func updateUIViewController(_ uiViewController: ContentContainerController<ContentView, ControlView>, context: Context) {
        uiViewController.content.rootView = content()
        uiViewController.controls.rootView = controls()
    }
}

final class ContentContainerController<ContentView, ControlView>: UIViewController where ContentView: View, ControlView: View {
    let content: UIHostingController<ContentView>
    let controls: UIHostingController<ControlView>

    private let controlContainerView = UIVisualEffectView(effect: UIBlurEffect(style: .systemMaterial))

    init(content: UIHostingController<ContentView>, controls: UIHostingController<ControlView>) {
        self.content = content
        self.controls = controls

        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        addChild(content)
        content.view.frame = view.bounds
        content.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(content.view)
        content.didMove(toParent: self)

        controlContainerView.preservesSuperviewLayoutMargins = true
        controlContainerView.contentView.preservesSuperviewLayoutMargins = true
        controlContainerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(controlContainerView)

        NSLayoutConstraint.activate([
            controlContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            controlContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            controlContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])

        addChild(controls)
        controls.view.backgroundColor = nil
        controls.view.translatesAutoresizingMaskIntoConstraints = false
        controlContainerView.contentView.addSubview(controls.view)
        NSLayoutConstraint.activate([
            controls.view.topAnchor.constraint(equalTo: controlContainerView.layoutMarginsGuide.topAnchor),
            controls.view.bottomAnchor.constraint(equalTo: controlContainerView.layoutMarginsGuide.bottomAnchor),
            controls.view.leadingAnchor.constraint(equalTo: controlContainerView.layoutMarginsGuide.leadingAnchor),
            controls.view.trailingAnchor.constraint(equalTo: controlContainerView.layoutMarginsGuide.trailingAnchor),
        ])
        controls.didMove(toParent: self)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        let occuludedFrame = view.safeAreaLayoutGuide.layoutFrame
            .intersection(view.convert(controlContainerView.bounds, from: controlContainerView))

        if !occuludedFrame.isNull {
            content.additionalSafeAreaInsets.bottom = occuludedFrame.height
        } else {
            content.additionalSafeAreaInsets.bottom = 0
        }
    }
}
