//
//  DateFilterView.swift
//  Expense Tracker -Sagar
//
//  Created by Sagar Jangra on 29/08/2024.
//

import SwiftUI

struct DateFilterView: View {
    @State var start: Date
    @State var end: Date
    var onSubmit: (Date, Date) -> ()
    var onClose: () -> ()
    var body: some View {
        VStack(spacing: 15) {
            DatePicker("Start Date", selection: $start, displayedComponents: [.date])
            
            DatePicker("End Date", selection: $end, displayedComponents: [.date])
            
            HStack(spacing: 15) {
                Button("Cancel") {
                    onClose()
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 5))
                .tint(.red)
                
                Button("Filter") {
                    onSubmit(start, end)
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 5))
                .tint(appTint)
            }
            .padding(.top, 10)
        }
        .padding(15)
        .background(.bar, in: .rect(cornerRadius: 10))
        .padding(.horizontal, 30)
    }
}

#Preview {
    DateFilterView(
        start: Date(), // Start with the current date
        end: Calendar.current.date(byAdding: .day, value: 7, to: Date()) ?? Date(), // End date 7 days from now
        onSubmit: { start, end in
            print("Date range submitted: \(start) to \(end)")
        },
        onClose: {
            print("Date filter view closed")
        }
    )
}

