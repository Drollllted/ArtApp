//
//  ArtistsSectionView.swift
//  ArtApp
//
//  Created by Drolllted on 07.07.2025.
//

import SwiftUI

struct ArtistsSectionView: View {
    
    let artists: Artists
    
    var body: some View {
        HStack(alignment: .center ,spacing: 20) {
            Image(artists.image)
                .resizable()
                .scaledToFit()
                .frame(width: 96, height: 96)
                .foregroundStyle(Color.gray)
            
            VStack(alignment: .leading ,spacing: 10) {
                Text(artists.name)
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                
                Text(artists.bio)
                    .font(.system(size: 14))
                    .fontWeight(.regular)
                    .foregroundStyle(.black)
                    .lineLimit(2)
            }
        }
    }
}

