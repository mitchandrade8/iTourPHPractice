//
//  DestinationListingView.swift
//  iTourPHPractice
//
//  Created by Mitch Andrade on 10/15/23.
//

import SwiftData
import SwiftUI

struct DestinationListingView: View {
    
    @Environment(\.modelContext) var modelContext
    // To handle more than one sort, use an array of sorts
    // @Query(sort: \Destination.name, order: .reverse) var destinations: [Destination]
    @Query(sort: [
        SortDescriptor(\Destination.priority, order: .reverse),
        SortDescriptor(\Destination.name)
                 ]) var destinations: [Destination]
    
    var body: some View {
        List {
            ForEach(destinations) { destination in
                NavigationLink(value: destination) {
                    VStack(alignment: .leading) {
                        Text(destination.name)
                            .font(.headline)
                        
                        Text(destination.date.formatted(date: .long, time: .shortened))
                    }
                }
            }
            .onDelete(perform: deleteDestinations)
        }
    }
    
    func deleteDestinations(_ indexSet: IndexSet) {
        for index in indexSet {
            let destination = destinations[index]
            modelContext.delete(destination)
        }
    }
}

#Preview {
    DestinationListingView()
}
