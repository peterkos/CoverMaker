//
//  EnvironmentValues+Extensions.swift
//  CoverMaker
//
//  Created by Peter Kos on 5/24/24.
//

import SwiftUI

private struct NewEnvironmentKey: EnvironmentKey {
    static let defaultValue: String = ""
}

extension EnvironmentValues {
    var newValue: String {
        get { self[NewEnvironmentKey.self] }
        set { self[NewEnvironmentKey.self] = newValue }
    }
}
