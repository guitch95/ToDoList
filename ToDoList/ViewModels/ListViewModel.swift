//
//  ListViewModel.swift
//  ToDoList
//
//  Created by Guillaume Richard on 05/02/2026.
//

import Foundation
import SwiftUI

@Observable
class ListViewModel {
    var items = [ItemModel]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }

    init() {
        getItems()
    }

    func getItems() {
        if let savedItems = UserDefaults.standard.data(forKey: "Items") {
            if let decodedItems = try? JSONDecoder().decode(
                [ItemModel].self,
                from: savedItems
            ) {
                items = decodedItems
                return
            }
        }
        items = []

    }

    func removeItem(offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }

    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)

    }

    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }

    func toggleItem(id: UUID) {
        if let index = items.firstIndex(where: { $0.id == id }) {
            items[index].isCompleted.toggle()
        }

    }
}
