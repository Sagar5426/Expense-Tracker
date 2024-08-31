//
//  Transaction.swift
//  Expense Tracker -Sagar
//
//  Created by Sagar Jangra on 28/08/2024.
//

import SwiftUI
import SwiftData

@Model
class Transaction {
    // properties
    var title: String
    var remarks: String
    var amount: Double
    var dateAdded: Date
    var category: String
    var tintColor: String
    
    init(title: String, remarks: String, amount: Double, dateAdded: Date, category: Category, tintColor: TintColor) {
        self.title = title
        self.remarks = remarks
        self.amount = amount
        self.dateAdded = dateAdded
        self.category = category.rawValue
        self.tintColor = tintColor.color
    }
    
    // Extracts and returns the Color corresponding to the `tintColor` string.
    // If no match is found, returns the default `appTint` color.
    @Transient
    var color: Color {
        return tints.first(where: { $0.color == tintColor})?.value ?? appTint
    }
    
    // @Transient: This wrapper tells SwiftData not to persist in the annotated property.
   // NOTE: By default, SwiftData does not persist computed properties, Thus, it's not necessary as it's a computed property, but I still used it.
    @Transient
    var tint: TintColor? {
        return tints.first(where: { $0.color == tintColor})
    }
    
    @Transient
    var rawCategory: Category? {
        return Category.allCases.first(where: {category == $0.rawValue})
    }
}

//// Sample Transaction for UI Building
//var sampleTransactions: [Transaction] = [
//    .init(title: "Magic Keyboard", remarks: "Apple Product", amount: 129, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
//    .init(title: "Apple Music", remarks: "Subscription", amount: 10.99, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
//    .init(title: "iCloud+", remarks: "Subscription", amount: 0.99, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
//    .init(title: "Payment", remarks: "Payment Received!", amount: 2499, dateAdded: .now, category: .income, tintColor: tints.randomElement()!),
//]

