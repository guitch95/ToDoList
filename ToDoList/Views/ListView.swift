//
//  ListView.swift
//  ToDoList
//
//  Created by Guillaume Richard on 05/02/2026.
//

import SwiftUI

struct ListView: View {

    @State var items: [ItemModel] = [
        ItemModel(title: "This is the first item", isCompleted: false),
        ItemModel(title: "This is the second one", isCompleted: true),
        ItemModel(title: "This is the third!", isCompleted: false)
    ]

    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
            .onDelete(perform: removeItem)
            .onMove(perform: moveItem)
        }
        .listStyle(.plain)
        .navigationTitle("Todo List 📝")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
            }

            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("Add", destination: AddView())
            }
        }

    }
    
    func removeItem(offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
        
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
}
