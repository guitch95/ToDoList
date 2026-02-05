//
//  ItemModel.swift
//  ToDoList
//
//  Created by Guillaume Richard on 05/02/2026.
//

import Foundation


struct ItemModel : Identifiable {
    let id = UUID()
    let title : String
    let isCompleted : Bool
}
