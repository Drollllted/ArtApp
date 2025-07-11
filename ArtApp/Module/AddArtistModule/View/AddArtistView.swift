//
//  AddArtistView.swift
//  ArtApp
//
//  Created by Drolllted on 11.07.2025.
//

import SwiftUI

struct AddArtistView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    
    var body: some View {
        NavigationStack {
            VStack{
                
            }
            .navigationTitle("Add Artist")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden()
            .toolbar{
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        // saved 
                    } label: {
                        Text("save")
                            .font(.system(size: 18))
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                    }

                }
                
                ToolbarItem(placement: .topBarLeading) {
                    CustomBackView {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    AddArtistView()
}
