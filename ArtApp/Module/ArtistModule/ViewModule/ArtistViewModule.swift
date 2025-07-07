//
//  ArtistViewModule.swift
//  ArtApp
//
//  Created by Drolllted on 07.07.2025.
//

import Foundation

final class ArtistViewModule: ObservableObject {
    
    @Published var artists: [Artists] = []
    @Published var networkService = NetworkService.shared
    
    func fetchData() {
        networkService.setupJSON { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let data):
                    self?.artists = data.artists
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
    
}
