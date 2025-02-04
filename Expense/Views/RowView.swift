//
//  RowView.swift
//  Expense
//
//  Created by froehly jean-baptiste on 28/01/2025.
//

import SwiftUI

struct RowView: View {
    
    let expense: Expense
    
    var body: some View {
        HStack {
            Text(expense.title)
            Spacer()
            Text(expense.value)
            
        }
        .font(.title2)
        .padding(.vertical, 10)
    }
    
    
}
