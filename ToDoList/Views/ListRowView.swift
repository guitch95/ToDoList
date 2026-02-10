//
//  ListRowView.swift
//  ToDoList
//
//  Created by Guillaume Richard on 05/02/2026.
//

import SwiftUI

struct ListRowView : View {
    let item : ItemModel
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? .green : .red)
            Text(item.title)
                .strikethrough(item.isCompleted)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview {
    ListRowView(item: ItemModel(title: "Hello", isCompleted: false))
}
