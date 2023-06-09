//
//  ListView.swift
//  ToDoList
//
//  Created by Patrick Lanham on 13.05.23.
//

import SwiftUI


struct ListView: View {
    @EnvironmentObject var listViewModel: ListViewModel
   
    
    var body: some View {
        List {
            ForEach(listViewModel.items) { item in
                
                //ForEach greift auf das items Array zu und zieht sich in die
                //ListRowView jedes Element aus dem Array
               ListRowView(item: item)
            }
            .onDelete(perform: listViewModel.deleteItem) // Löscht Items aus der Liste
            .onMove(perform: listViewModel.moveItem(from:to:))   // Bewegt ein Item aus der Liste
                
            
        }
        .listStyle(PlainListStyle())
        .navigationTitle("ToDo List 📝 ")
        .shadow(radius: 2)
        
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Hinzufügen", destination: {
                AddView()
            })
        )
        
    }
    
   
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
        .environmentObject(ListViewModel())
       
    }
}


