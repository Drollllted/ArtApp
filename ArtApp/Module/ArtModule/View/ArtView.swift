//
//  ArtView.swift
//  ArtApp
//
//  Created by Drolllted on 07.07.2025.
//

import SwiftUI

struct ArtView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 20) {
                Image(systemName: "photo")
            }
            .navigationTitle("Title")
            .toolbarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ArtView()
}
