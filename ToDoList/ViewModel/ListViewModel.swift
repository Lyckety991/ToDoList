//
//  ListViewModel.swift
//  ToDoList
//
//  Created by Patrick Lanham on 18.05.23.
//

import Foundation


class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
        
    }
    
    // MARK: - Funktionen
    
    // Zieht sich die Inhalte aus dem Array
    func getItems() {
        
        let newItems = [
            ItemModel(title: "First title", isCompleated: false),
            ItemModel(title: "Second", isCompleated: true),
            ItemModel(title: "Third", isCompleated: false),
            
            ]
        items.append(contentsOf: newItems)
    }
    
    // Löscht Inhalte der Liste
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    // Bewegt Inhalte in der Liste
    func moveItem(from: IndexSet, to: Int) {
        
        items.move(fromOffsets: from, toOffset: to)
        
    }
    
    // Fügt Inhalte der Liste hinzu
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleated: false)
        items.append(newItem)
    }
}
