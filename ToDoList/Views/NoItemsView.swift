//
//  NoItemsView.swift
//  ToDoList
//
//  Created by Guillaume Richard on 10/02/2026.
//

import SwiftUI

struct NoItemsView: View {
    var body: some View {
        ScrollView {
            VStack {
                Image(systemName: "checklist")
                    .font(.system(size: 90))
                Text("Aucune tâche")
                    .font(.title)
                Text("Appuyer sur + pour ajouter une tâche")
                    .fontWeight(.semibold)

            }
            .padding(.top, 100)
            .foregroundStyle(.gray.opacity(0.7))

        }

    }
}

#Preview {
    NoItemsView()
}
