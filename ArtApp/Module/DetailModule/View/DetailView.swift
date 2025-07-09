//
//  DetailView.swift
//  ArtApp
//
//  Created by Drolllted on 07.07.2025.
//

import SwiftUI

struct DetailView: View {
    
    let artists: Artists
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 15) {
                    ZStack(alignment: .topLeading) {
                        Image(artists.image)
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity)
                            .frame(height: UIScreen.main.bounds.height * 0.4)
                            .clipped()
                            .foregroundStyle(.gray)
                            .ignoresSafeArea(.all)
                        
                        
                        VStack(alignment: .leading) {
                            Spacer()
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text(artists.name)
                                    .font(.system(size: 20))
                                    .fontWeight(.medium)
                                    .foregroundStyle(.white)
                                
                                Text("Actor")
                                    .font(.system(size: 18))
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.white)
                            }
                            .padding()
                            .padding(.leading, 20)
                            .padding(.bottom, 20)
                        }
                        .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height * 0.4, alignment: .leading)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: UIScreen.main.bounds.height * 0.4)
                    
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Biography")
                            .font(.system(size: 18))
                            .fontWeight(.semibold)
                        
                        Text(artists.bio)
                            .font(.system(size: 18))
                            .fontWeight(.medium)
                            .foregroundStyle(.gray)
                        
                        Divider()
                        
                        Text("Works")
                            .bold()
                            .font(.system(size: 18))
                        
                        
                        VStack(alignment: .leading) {
                            ForEach(artists.works, id: \.title) { works in
                                ListView(works: works)
                            }
                            .padding()
                        }
                    }
                    .padding(.leading, 25)
                    
                    Spacer()
                }
            }
            .edgesIgnoringSafeArea(.top)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
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
        }
    }
}
