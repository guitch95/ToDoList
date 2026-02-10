//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Guillaume Richard on 30/01/2026.
//

import SwiftUI

@main
struct ToDoListApp: App {
    @State var listViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
            .environment(listViewModel)

        }
    }
}
