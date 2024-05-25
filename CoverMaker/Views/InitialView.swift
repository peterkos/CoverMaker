//
//  InitialView.swift
//  CoverMaker
//
//  Created by Peter Kos on 5/24/24.
//

import SwiftUI

struct InitialView: View {
    @EnvironmentObject private var store: Store

    @State private var title = ""
    @State private var iconName = ""
    @State private var bgColor: Color = .gray

    var body: some View {
        VStack(spacing: 30) {
            Form {
                TextField("Album Title", text: $title)
                TextField("Icon name", text: $iconName)
                ColorPicker("Background", selection: $bgColor)
            }
            .font(Theme.fonts.body)
            .frame(maxWidth: 300)
            AlbumCollection(
                title: $title,
                iconName: $iconName,
                bgColor: $bgColor
            )
            Button("Save") {
                store.save()
            }
            .buttonStyle(.filled(color: .black))
        }
        .padding(30)
    }
}

#Preview {
    InitialView()
}
