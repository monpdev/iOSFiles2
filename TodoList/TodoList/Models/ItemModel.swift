//
//  ItemModel.swift
//  TodoList
//
//  Created by Mon P. on 16/01/2023.
//

import Foundation

//Immutable Struct

struct ItemModel: Identifiable, Codable {
    let id: String
    var title:String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title:String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
