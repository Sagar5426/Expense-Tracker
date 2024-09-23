//
//  Expense_Tracker__SagarApp.swift
//  Expense Tracker -Sagar
//
//  Created by Sagar Jangra on 28/08/2024.
//

import SwiftUI
import WidgetKit

@main
struct Expense_Tracker__SagarApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    WidgetCenter.shared.reloadAllTimelines()
                }
        }
        .modelContainer(for: [Transaction.self])
    }
}
