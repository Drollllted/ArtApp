//
//  CustomBackView.swift
//  ArtApp
//
//  Created by Drolllted on 10.07.2025.
//

import SwiftUI

struct CustomBackView: View {
    
    var action: () -> Void
    
    var body: some View {
            Button {
                action()
            } label: {
                Image(systemName: "chevron.left")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 10, height: 10)
                    .foregroundStyle(.black)
                    .background {
                        Circle()
                            .fill(Color.white.opacity(0.4))
                            .stroke(Color.black, lineWidth: 1)
                            .frame(width: 30, height: 30)
                    }
                    .padding(10)
            }
        }
    }
