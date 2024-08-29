//
//  ContentView.swift
//  Expense Tracker -Sagar
//
//  Created by Sagar Jangra on 28/08/2024.
//

import SwiftUI

struct ContentView: View {
    // Intro Visibility Status
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    //Active tab
    @State private var activeTab: Tab = .settings
    
    var body: some View {
        TabView(selection: $activeTab) {
            Recents()
                .tag(Tab.recents)
                .tabItem { Tab.recents.tabContent }
            
            Search() //view displayed on selection
                .tag(Tab.search) //id type something
                .tabItem { Tab.search.tabContent } //creates view inside tab
            
            Graphs()
                .tag(Tab.charts)
                .tabItem { Tab.charts.tabContent }
            
            Settings()
                .tag(Tab.settings)
                .tabItem { Tab.settings.tabContent }
        }
        .tint(appTint)
        .sheet(isPresented: $isFirstTime) {
            IntroScreen()
                .interactiveDismissDisabled()
        }
    }
}

#Preview {
    ContentView()
}
