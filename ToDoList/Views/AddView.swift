//
//  AddView.swift
//  ToDoList
//
//  Created by Guillaume Richard on 05/02/2026.
//

import SwiftUI

struct AddView: View {
    @State private var textFieldText = ""
    @Environment(ListViewModel.self) var listViewModel
    @Environment(\.dismiss) var dismiss

    @State private var alertTitle = ""
    @State var showAlert = false

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
                    saveButtonPressed()
                } label: {
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
        .alert("Important ⚠️⚠️⚠️", isPresented: $showAlert) {
        } message: {
            Text(alertTitle)

        }
    }
        
        
        func saveButtonPressed() {
            if textIsAppropriate() {
                listViewModel.addItem(title: textFieldText)
                textFieldText = ""
                dismiss()
            }
            
        }
        
        func textIsAppropriate() -> Bool {
            if textFieldText.count < 4 {
                alertTitle =
                "Your new todo item must be at least 4 characters long. 😱😨😱"
                showAlert.toggle()
                return false
            }
            return true
        }
    }


#Preview {
    NavigationStack {
        AddView()
    }
    .environment(ListViewModel())
}
