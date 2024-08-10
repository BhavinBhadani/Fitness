//
//  FitnessTabView.swift
//  Fitness
//
//  Created by Bhavin Bhadani on 10/08/24.
//

import SwiftUI

struct FitnessTabView: View {
    @State var selctedTab = "Home"
    
    init() {
        let apperance = UITabBarAppearance()
        apperance.configureWithOpaqueBackground()
        apperance.stackedLayoutAppearance.selected.iconColor = .orange
        apperance.stackedLayoutAppearance.selected.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.label
        ]
        UITabBar.appearance().scrollEdgeAppearance = apperance
    }
    

    var body: some View {
        TabView(selection: $selctedTab) {
            HomeView()
                .tag("Home")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            HistoricView()
                .tag("Historic")
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("Charts")
                }
        }
    }
}

#Preview {
    FitnessTabView()
}
