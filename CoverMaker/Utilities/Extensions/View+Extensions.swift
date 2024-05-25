//
//  View+Extensions.swift
//  CoverMaker
//
//  Created by Peter Kos on 5/25/24.
//

import SwiftUI

// View-related extensions :)

extension ButtonStyle where Self == FilledButtonStyle {
    static func filled(color: Color) -> FilledButtonStyle {
        FilledButtonStyle(color: color)
    }
}
