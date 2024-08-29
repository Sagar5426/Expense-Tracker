//
//  TintColor.swift
//  Expense Tracker -Sagar
//
//  Created by Sagar Jangra on 28/08/2024.
//

import SwiftUI

// Custom Tint Color for Transaction View

struct TintColor: Identifiable {
    let id = UUID()
    var color: String
    var value: Color
}
    
    var tints: [TintColor] = [
        .init(color: "Red", value: .red),
        .init(color: "Blue", value: .blue),
        .init(color: "Pink", value: .pink),
        .init(color: "Purple", value: .purple),
        .init(color: "Brown", value: .brown),
        .init(color: "Orange", value: .orange)
    
    ]

