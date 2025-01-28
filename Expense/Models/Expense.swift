//
//  Expense.swift
//  Expense
//
//  Created by froehly jean-baptiste on 28/01/2025.
//

import Foundation

struct Expense: Identifiable {
    var id = UUID()
    var title: String
    var value: Int
    var label: String
    
    static var testData = [
        Expense(title: "Apple", value: 120, label: "Perso"),
        Expense(title: "Airbnb", value: 1200, label: "Pro"),
        Expense(title: "McDonald", value: 300, label: "Vacation"),
        Expense(title: "Bakery", value: 10, label: "Perso"),
        Expense(title: "Mechanic", value: 1000, label: "Pro"),
    ]
    
    
}
