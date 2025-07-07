//
//  ContentView.swift
//  ArtApp
//
//  Created by Drolllted on 07.07.2025.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm: ArtistViewModule
    @State private var textFieldText: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    
                    TextField("Search art or artists...", text: $textFieldText)
                        .frame(height: 50)
                        .fontWeight(.black)
                        .font(.system(size: 18))
                        .foregroundStyle(Color.gray)
                        .background(
                            RoundedRectangle(cornerRadius: 20, style: .circular)
                                .stroke(Color.black, lineWidth: 1)
                                .foregroundStyle(Color.gray.opacity(0.2))
                                .offset(x: -5)
                        )
                    
                    Text("\(vm.artists.count)")
                    
                    VStack(spacing: 16){
                        ForEach(vm.artists, id: \.name) { artists in
                            ArtistsSectionView(artists: artists)
                        }
                    }
                }
                .padding()
            }
        }
        .navigationTitle("Artists")
        .navigationBarTitleDisplayMode(.large)
        .onAppear{
            vm.fetchData()
        }
    }
}

#Preview {
    ContentView(vm: ArtistViewModule())
}
