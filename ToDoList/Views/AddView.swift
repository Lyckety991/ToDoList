//
//  AddView.swift
//  ToDoList
//
//  Created by Patrick Lanham on 13.05.23.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Gebe dein ToDo ein", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 65)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                
                Button {
                    saveButtonPressed()
                } label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                        
                }
            }
            .padding(12)
            
        }
        .navigationTitle("Add an Item")
    }
    
    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
       
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            return false
        }
        
        return true
    }
}


struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
       
        
        
    }
}
