//
//  WelcomeJSON.swift
//  ArtApp
//
//  Created by Drolllted on 07.07.2025.
//

import Foundation

struct WelcomeJSON: Codable {
    let artists: [Artists]
}

struct Artists: Codable {
    let name: String
    let bio: String
    let image: String
    let works: [Works]
}

struct Works: Codable {
    let title: String
    let image: String
    let info: String
}
