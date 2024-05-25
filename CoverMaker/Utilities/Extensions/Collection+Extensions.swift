//
//  Collection+Extensions.swift
//  CoverMaker
//
//  Created by Peter Kos on 5/24/24.
//

import Foundation

extension Collection {
    /// Returns the element at the specified index if it is within bounds, otherwise nil.
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}
