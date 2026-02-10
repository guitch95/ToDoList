//
//  ListView.swift
//  ToDoList
//
//  Created by Guillaume Richard on 05/02/2026.
//

import SwiftUI

struct ListView: View {
    @Environment(ListViewModel.self) private var listViewModel
    var body: some View {
        List {
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation {
                            listViewModel.toggleItem(id: item.id)
                        }
                        
                    }
            }
            .onDelete(perform: listViewModel.removeItem)
            .onMove(perform: listViewModel.moveItem)
        }
        .listStyle(.plain)
        .navigationTitle("Todo List 📝")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
            }

            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("Add") {
                    AddView()
                }
            }
        }

    }

}

#Preview {
    NavigationStack {
        ListView()
    }
    .environment(ListViewModel())
    
}
