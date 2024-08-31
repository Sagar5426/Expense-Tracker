//
//  Expense_Tracker__SagarApp.swift
//  Expense Tracker -Sagar
//
//  Created by Sagar Jangra on 28/08/2024.
//

import SwiftUI

@main
struct Expense_Tracker__SagarApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Transaction.self])
    }
}
