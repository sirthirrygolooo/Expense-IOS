//
//  ExpenseApp.swift
//  Expense
//
//  Created by froehly jean-baptiste on 28/01/2025.
//

import SwiftUI

@main
struct ExpenseApp: App {
    var body: some Scene {
        WindowGroup {
            ListView(data: Expense.testData)
        }
    }
}
