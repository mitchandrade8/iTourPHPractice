//
//  iTourPHPracticeApp.swift
//  iTourPHPractice
//
//  Created by Mitch Andrade on 10/14/23.
//

import SwiftUI
import SwiftData

@main
struct iTourPHPracticeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Destination.self)
    }
}
