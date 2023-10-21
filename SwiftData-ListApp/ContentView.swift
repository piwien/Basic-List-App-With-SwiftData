//
//  ContentView.swift
//  SwiftData-ListApp
//
//  Created by Berkay Yaşar on 21.10.2023.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var context
    @Query private var items: [DataItem]
    
    var body: some View {
        VStack {
           
            Text("Tap on this button to add data")
            Button(action: {
                addItem()
            }, label: {
                Text("Add an item")
            })
            
            List {
                ForEach(items) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        Button {
                            updateItem(item: item)
                        } label: {
                            Image(systemName: "arrow.triangle.2.circlepath")
                        }
                    }
                }.onDelete(perform: { indexSet in
                    for index in indexSet {
                        deleteItem(item: items[index])
                    }
                })
            }
        }
        .padding()
    }
    
    func addItem() {
        let item = DataItem(name: "Test")
        // Add item to the data context
        context.insert(item)
    }
    
    func deleteItem(item: DataItem) {
        context.delete(item)
    }
    
    func updateItem(item: DataItem) {
        //Edit
        item.name = "Update Test Item"
        //Save
        try? context.save()
    }
    
}

#Preview {
    ContentView()
}
