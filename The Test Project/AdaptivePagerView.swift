//
//  AdaptivePagerView.swift
//  The Test Project
//
//  Created by Rajesh Khuntia on 06/09/23.
//

import SwiftUI

struct AdaptivePagerView: View {
    // Define your data source (an array of items)
    let items: [String] = [
        "Item 1",
        "Item 2",
        "Item 3",
        "Item 4",
        "Item 5",
        "Item 6",
        "Item 7",
        "Item 8",
        "Item 4",
        "Item 5",
        "Item 6",
        "Item 7",
        "Item 8"
 
        // Add more items as needed
    ]
    
    // Define the number of items to display on each page
    let itemsPerPage = 4
    
    var body: some View {
        TabView {
            ForEach(0..<items.count/itemsPerPage + 1, id: \.self) { pageIndex in
                let startIndex = pageIndex * itemsPerPage
                let endIndex = min(startIndex + itemsPerPage, items.count)
                let pageItems = Array(items[startIndex..<endIndex])
                
                VStack {
                    ForEach(pageItems, id: \.self) { item in
                        Text(item)
                            .padding()
                    }
                }
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .presentationDetents([.medium])
    }
}

#Preview {
    AdaptivePagerView()
}
