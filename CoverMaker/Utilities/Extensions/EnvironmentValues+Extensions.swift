//
//  EnvironmentValues+Extensions.swift
//  CoverMaker
//
//  Created by Peter Kos on 5/24/24.
//

import SwiftUI

private struct TitleKey: EnvironmentKey {
    static let defaultValue: String = ""
}

private struct IconNameKey: EnvironmentKey {
    static let defaultValue: String = ""
}

private struct BackgroundColorKey: EnvironmentKey {
    static let defaultValue: Color = .gray
}

extension EnvironmentValues {
    var title: String {
        get { self[TitleKey.self] }
        set { self[TitleKey.self] = newValue }
    }

    var iconName: String {
        get { self[IconNameKey.self] }
        set { self[IconNameKey.self] = newValue }
    }

    var bgColor: Color {
        get { self[BackgroundColorKey.self] }
        set { self[BackgroundColorKey.self] = newValue }
    }
}
