//
//  CoverMakerApp.swift
//  CoverMaker
//
//  Created by Peter Kos on 5/24/24.
//

import SwiftUI

@main
struct CoverMakerApp: App {
    @StateObject private var store = Store(service: ServiceEngine())

    var body: some Scene {
        WindowGroup {
            RootView()
                .frame(width: 550, height: 550)
        }
        .environmentObject(store)
        .defaultPosition(.center)
        .windowResizability(.contentSize)
    }
}
