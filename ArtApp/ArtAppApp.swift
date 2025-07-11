//
//  ArtAppApp.swift
//  ArtApp
//
//  Created by Drolllted on 07.07.2025.
//

import SwiftUI
import SwiftData

@main
struct ArtAppApp: App {
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            ArtistsSwiftData.self,
            WorksSwiftData.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        
        do{
            return try ModelContainer(for: schema, configurations: modelConfiguration)
        } catch {
            fatalError("234")
        }
        
        
    }()
    
    var body: some Scene {
        WindowGroup {
            ContentView(vm: ArtistViewModule())
        }
        .modelContainer(sharedModelContainer
        )
        
    }
}
