//
//  AddExpenseView.swift
//  Expense
//
//  Created by froehly jean-baptiste on 28/01/2025.
//

import SwiftUI

struct AddExpenseView: View {
    @State private var expenseTitle: String = ""
    @State 
    
    var body: some View {
        VStack {
            TextField("Enter your task", text: $todoTitle)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(.systemGray4))
                .cornerRadius(10)
            
            Button {
                
            } label: {
                Text("SAVE")
                    .foregroundStyle(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color.accentColor)
                    .cornerRadius(10)
            }
            
            Spacer()
        }
        .padding(14)
        .navigationTitle("Add a todo")
    }
}

#Preview {
    AddExpenseView()
}
