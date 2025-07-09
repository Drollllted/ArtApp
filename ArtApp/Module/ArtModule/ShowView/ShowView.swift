//
//  ShowView.swift
//  ArtApp
//
//  Created by Drolllted on 10.07.2025.
//

import SwiftUI

struct ShowView: View {
    @State private var currentScale: CGFloat = 1.0
    @State private var lastScale: CGFloat = 1.0
    @State private var offset: CGSize = .zero
    @State private var lastOffset: CGSize = .zero
    
    @Environment(\.dismiss) private var dismiss
    
    let works: Works
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                Image(works.image)
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(currentScale)
                    .offset(offset)
                    .gesture(
                        MagnificationGesture()
                            .onChanged { value in
                                let delta = value / lastScale
                                lastScale = value
                                currentScale *= delta
                            }
                            .onEnded { _ in
                                lastScale = 1.0
                                if currentScale < 1.0 {
                                    withAnimation {
                                        currentScale = 1.0
                                        offset = .zero
                                    }
                                }
                            }
                    )
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                let newOffset = CGSize(
                                    width: lastOffset.width + gesture.translation.width,
                                    height: lastOffset.height + gesture.translation.height
                                )
                                
                                let maxX = (geometry.size.width * (currentScale - 1)) / 2
                                let maxY = (geometry.size.height * (currentScale - 1)) / 2
                                
                                offset.width = min(max(newOffset.width, -maxX), maxX)
                                offset.height = min(max(newOffset.height, -maxY), maxY)
                            }
                            .onEnded { _ in
                                lastOffset = offset
                            }
                    )
                    .gesture(
                        TapGesture(count: 2)
                            .onEnded {
                                if currentScale > 1.0 {
                                    withAnimation {
                                        currentScale = 1.0
                                        offset = .zero
                                        lastOffset = .zero
                                    }
                                } else {
                                    withAnimation {
                                        currentScale = 2.5
                                    }
                                }
                            }
                    )
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                CustomBackView {
                    dismiss()
                }
            }
        }
    }
}
