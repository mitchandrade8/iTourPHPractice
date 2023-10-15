//
//  ContentView.swift
//  iTourPHPractice
//
//  Created by Mitch Andrade on 10/14/23.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    
    @Environment(\.modelContext) var modelContext

    @State private var path = [Destination]()
    
    var body: some View {
        NavigationStack(path: $path) {
            DestinationListingView()
            .navigationTitle("Trips")
            .navigationDestination(for: Destination.self, destination: EditDestinationView.init)
            .toolbar {
                Button("Add Samples", action: addSamples)
                Button("Add Destination", systemImage: "plus", action: addDestination)
            }
        }
    }
    
    func addSamples() {
        let rome = Destination(name: "Rome")
        let florence = Destination(name: "Florence")
        let naples = Destination(name: "Naples")
        
        modelContext.insert(rome)
        modelContext.insert(florence)
        modelContext.insert(naples)
    }
    
    func addDestination() {
        let destination = Destination()
        modelContext.insert(destination)
        path = [destination]
    }
    
   
}

#Preview {
    ContentView()
}
