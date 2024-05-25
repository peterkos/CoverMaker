//
//  Theme.swift
//  CoverMaker
//
//  Created by Peter Kos on 5/25/24.
//

import SwiftUI

enum Theme {
    typealias fonts = ThemeFont
    typealias colors = ThemeColor
    typealias constants = ThemeConstants
}

// MARK: - Fonts

enum ThemeFont {
    static var heading: Font {
        .custom(
            "Avenir Heavy",
            size: 40
        )
    }

    static var body: Font {
        .custom(
            "Avenir",
            size: 14
        )
    }
}

// MARK: - Colors

enum ThemeColor {}

// MARK: - Constants

enum ThemeConstants {
    static var cornerRadius: CGFloat = 8.0
}
