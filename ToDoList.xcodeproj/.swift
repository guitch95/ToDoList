//
//  LaunchScreenView.swift
//  ToDoList
//

import SwiftUI

struct LaunchScreenView: View {
    var body: some View {
        ZStack {
            Color(.systemFill)
                .ignoresSafeArea()
            
            VStack(spacing: 16) {
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.white)
                
                Text("Todos")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    LaunchScreenView()
}
