//
//  ItemModel.swift
//  ToDoList
//
//  Created by Guillaume Richard on 05/02/2026.
//

import Foundation


struct ItemModel : Identifiable, Codable {
    var id = UUID()
    let title : String
    var isCompleted : Bool
}
