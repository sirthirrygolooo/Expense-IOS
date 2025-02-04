//
//  ContentView.swift
//  Expense
//
//  Created by froehly jean-baptiste on 28/01/2025.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var expenseVM: ExpenseViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(expenseVM.expenses) {expense in
                    RowView(expense: expense)
                }
                .onDelete(perform: expenseVM.deleteExpense)
                .onMove(perform: expenseVM.moveExpense)
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Hehe")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink("Add", destination: AddExepenseView())
                }
            }
        }
    }
}



#Preview {
    ListView()
        .environmentObject(ExpenseViewModel())
}
