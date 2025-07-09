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
        NavigationStack {
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
                            NavigationLink(destination: DetailView(artists: artists)) {
                                ArtistsSectionView(artists: artists)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Artists")
            .toolbar {
                Button {
                    print("32212313")
                } label: {
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundStyle(.black)
                        .bold()
                        .offset(y: 40)
                }
                
            }
            
        }
        .onAppear{
            vm.fetchData()
        }
    }
}

#Preview {
    ContentView(vm: ArtistViewModule())
}
