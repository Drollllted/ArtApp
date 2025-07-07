//
//  ArtAppApp.swift
//  ArtApp
//
//  Created by Drolllted on 07.07.2025.
//

import SwiftUI

@main
struct ArtAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(vm: ArtistViewModule())
        }
    }
}
