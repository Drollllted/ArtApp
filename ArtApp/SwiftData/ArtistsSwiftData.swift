//
//  ArtistsSwiftData.swift
//  ArtApp
//
//  Created by Drolllted on 11.07.2025.
//

import SwiftUI
import SwiftData
@Model
class ArtistsSwiftData {
    var nameArtist: String
    var bioArtist: String
    var imageArtist: String
    var worksArtist: [WorksSwiftData]
    
    init(nameArtist: String, bioArtist: String, imageArtist: String, worksArtist: [WorksSwiftData]) {
        self.nameArtist = nameArtist
        self.bioArtist = bioArtist
        self.imageArtist = imageArtist
        self.worksArtist = worksArtist
    }
}
@Model
class WorksSwiftData {
    var nameWorks: String
    var bioWorks: String
    var imageWorks: String
    
    init(nameWorks: String, bioWorks: String, imageWorks: String) {
        self.nameWorks = nameWorks
        self.bioWorks = bioWorks
        self.imageWorks = imageWorks
    }
}
