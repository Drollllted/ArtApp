//
//  ArtView.swift
//  ArtApp
//
//  Created by Drolllted on 07.07.2025.
//

import SwiftUI

struct ArtView: View {
    
    let works: Works
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 20) {
                Image(works.image)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)
                    .cornerRadius(20)
                    .foregroundStyle(.gray)
                
                Text("Information")
                    .bold()
                    .font(.system(size: 20))
                    .foregroundStyle(.black)
                
                Text(works.info)
                    .fontWeight(.medium)
                    .font(.system(size: 18))
                    .foregroundStyle(.gray)
                    .lineLimit(20)
                
                Spacer()

            }
            .padding()
            
            VStack(alignment: .center){
                NavigationLink(destination: ShowView(works: works)) {
                        Text("Развидеть")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundStyle(.black)
                            .background{
                                RoundedRectangle(cornerRadius: 40)
                                    .fill()
                                    .foregroundStyle(.blue)
                                    .frame(width: 400, height: 70)
                            }
                    }
                .padding()
            }
            .padding()
            .navigationTitle(works.title)
            .toolbarTitleDisplayMode(.inline)
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
}
