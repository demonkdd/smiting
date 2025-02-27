//
//  Simulator_AppApp.swift
//  Simulator App
//
//  Created by Hamza Crichlow on 10/8/24.
//

import SwiftUI
import SwiftData
import PhotosUI

@main
struct Simulator_AppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Character.self)
    }
}

//main page

