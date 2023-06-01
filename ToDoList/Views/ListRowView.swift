//
//  ListRowView.swift
//  ToDoList
//
//  Created by Patrick Lanham on 13.05.23.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleated ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleated ? .green : .red)
            VStack(alignment: .leading) {
                Text(item.title)
                Text(item.date)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
           
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
        
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "First Item", isCompleated: false) // Items für die Preview
    static var item2 = ItemModel(title: "Second Item",isCompleated: true) // Items für die Preview
    
    
    
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
