//
//  ContentView.swift
//  iTourPHPractice
//
//  Created by Mitch Andrade on 10/14/23.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    
    @Query var destinations: [Destination]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(destinations) { destination in
                    VStack(alignment: .leading) {
                        Text(destination.name)
                            .font(.headline)
                        
                        Text(destination.date.formatted(date: .long, time: .shortened))
                    }
                }
            }
            .navigationTitle("Trips")
            .toolbar {
                Button("Add Samples", action: addSamples)
            }
        }
    }
    
    func addSamples() {
        
    }
}

#Preview {
    ContentView()
}
