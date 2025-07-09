//
//  DetailView.swift
//  ArtApp
//
//  Created by Drolllted on 07.07.2025.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 15) {
                    ZStack(alignment: .topLeading) {
                        Image(systemName: "photo")
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
                                Text("Name name")
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
                        
                        Text("LOREM LOREM LOREM LOREM LOREM LOREM LOREM LOREM LOREM")
                            .font(.system(size: 18))
                            .fontWeight(.medium)
                            .foregroundStyle(.gray)
                        
                        Divider()
                        
                        Text("Works")
                            .bold()
                            .font(.system(size: 18))
                    }
                    .padding(.leading, 30)
                    
                    Spacer()
                }
            }
            
            .edgesIgnoringSafeArea(.top)
        }
        .navigationBarHidden(true)
    }
}


#Preview{
    DetailView()
}
