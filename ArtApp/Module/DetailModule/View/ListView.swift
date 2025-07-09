//
//  ListView.swift
//  ArtApp
//
//  Created by Drolllted on 10.07.2025.
//

import SwiftUI

struct ListView: View {
    
    let works: Works
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(works.image)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .frame(height: 200)
                .cornerRadius(10)
            
            Text(works.title)
                .foregroundStyle(.black)
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .padding(.leading, 8)
                
        }
        .background{
            RoundedRectangle(cornerRadius: 20)
                .stroke(.gray, lineWidth: 1)
                .clipped()
                .frame(maxWidth: .infinity)
                .frame(height: 250)
            
        }
    }
}

