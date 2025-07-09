//
//  NetworkService.swift
//  ArtApp
//
//  Created by Drolllted on 07.07.2025.
//

import Foundation

final class NetworkService {
    
    static let shared = NetworkService()
    
    private init(){}
    
    func setupJSON(completion: @escaping (Result<WelcomeJSON, NetworkErrors>) -> Void ) {
        guard let url = Bundle.main.url(forResource: "JSON", withExtension: "json") else {return}
        
        do {
            let data = try Data(contentsOf: url)
            
            let jsonDecoder = JSONDecoder()
            let json = try jsonDecoder.decode(WelcomeJSON.self, from: data)
           // print(json)
            completion(.success(json))
        } catch {
            print(error.localizedDescription)
        }
    }
    
}
