//
//  ItemModel.swift
//  ToDoList
//
//  Created by Patrick Lanham on 13.05.23.
//

import Foundation



struct ItemModel: Identifiable {
    
    let id: String = UUID().uuidString  //<-- Alle ID´s werden zu Strings
    let title: String
    let date = Date.now.formatted(date: .abbreviated, time: .shortened)
    let isCompleated: Bool
    
    
}
