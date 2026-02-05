//
//  AddView.swift
//  ToDoList
//
//  Created by Guillaume Richard on 05/02/2026.
//

import SwiftUI

struct AddView: View {
    
    @State private var textFieldText = ""
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(
                        .gray.opacity(0.3),
                        in: RoundedRectangle(cornerRadius: 10)
                    )
                
                Button {
                    
                } label : {
                    Text("Save".uppercased())
                        .frame(height: 40)
                        .font(.headline)
                }
                .buttonSizing(.flexible)
                .buttonBorderShape(.roundedRectangle(radius: 10))
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
        .navigationTitle("Add an item 🖊️")
        
    }
}

#Preview {
    NavigationStack {
        AddView()
    }
}
