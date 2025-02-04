//
//  Expense.swift
//  Expense
//
//  Created by froehly jean-baptiste on 28/01/2025.
//

import Foundation
import SwiftUI

enum Label : String, CaseIterable {
    case perso = "Perso"
    case pro = "Pro"
    case vacation = "Vacation"
    
    var color: Color {
        switch self {
        case .perso:
            return Color.pink
        case .pro:
            return Color.red
        case .vacation:
            return Color.yellow
            
        }
    }
}

struct Expense: Identifiable {
    var id = UUID()
    var title: String
    var value: Int
    var label : Label
    
    
    
    static var testData = [
        Expense(title: "Apple", value: 120, label: .perso),
        Expense(title: "Airbnb", value: 1200, label: .pro),
        Expense(title: "McDonald", value: 300, label: .vacation),
        Expense(title: "Bakery", value: 10, label: .perso),
        Expense(title: "Mechanic", value: 1000, label: .pro),
    ]
    
    
}
