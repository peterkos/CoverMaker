//
//  Store.swift
//  CoverMaker
//
//  Created by Peter Kos on 5/24/24.
//

import Foundation

class Store: ObservableObject {
    var service: Service

    init(service: Service) {
        self.service = service
    }

    func save() {
        
    }
}
