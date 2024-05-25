//
//  AlbumView.swift
//  CoverMaker
//
//  Created by Peter Kos on 5/24/24.
//

import SwiftUI

struct AlbumCollection: View {
    @Binding var title: String
    @Binding var iconName: String
    @Binding var bgColor: Color

    var body: some View {
        HStack(alignment: .bottom) {
            AlbumView(size: .large)
            AlbumView(size: .medium)
            AlbumView(size: .small)
        }
        .environment(\.title, title)
        .environment(\.iconName, iconName)
        .environment(\.bgColor, bgColor)
    }
}

struct AlbumView: View {
    enum AlbumSize: CGFloat {
        case small = 50
        case medium = 100
        case large = 300
    }

    @Environment(\.title) var title: String
    @Environment(\.iconName) var iconName: String
    @Environment(\.bgColor) var bgColor: Color

    var albumSize: CGFloat

    private var contentSize: CGFloat {
        albumSize / 3
    }

    private var titleSize: CGFloat {
        albumSize / 4
    }

    private var avenirCapHeight: CGFloat {
        (NSFont(name: "Avenir", size: titleSize) ?? .systemFont(ofSize: 80))
            .capHeight
    }

    init(size: AlbumSize) {
        albumSize = size.rawValue
    }

    var body: some View {
        VStack(spacing: albumSize / 5.0) {
            Spacer()
            Image(systemName: iconName)
                .resizable()
                .bold()
                .frame(
                    width: contentSize,
                    height: contentSize
                )
                .aspectRatio(1 / 1, contentMode: .fit)
            Text(title)
                .font(.custom("Avenir", size: titleSize))
                .bold()
                .frame(height: avenirCapHeight)
            Spacer()
        }
        .frame(
            width: albumSize,
            height: albumSize
        )
        .aspectRatio(1 / 1, contentMode: .fill)
        .background(
            RoundedRectangle(cornerRadius: 4.0)
                .fill(bgColor)
        )
    }
}

#Preview {
    AlbumCollection(
        title: .constant("Test"),
        iconName: .constant("arrow.right.circle"),
        bgColor: .constant(.blue)
    )
}
