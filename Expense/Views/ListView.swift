//
//  ContentView.swift
//  Expense
//
//  Created by froehly jean-baptiste on 28/01/2025.
//

import SwiftUI

struct ListView: View {
    
    var data: [Expense]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(data) {expense in
                    Text(expense.title)
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Hehe")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink("Add", destination: EmptyView())
                }
            }
        }
    }
}

#Preview {
    ListView(data: Expense.testData)
}
