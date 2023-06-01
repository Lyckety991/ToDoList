//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Patrick Lanham on 13.05.23.
//

import SwiftUI

@main
struct ToDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    
    var body: some Scene {
        WindowGroup {
            
            // Alle Views sind so automatisch in einer NavigationView
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
           
        }
    }
}
