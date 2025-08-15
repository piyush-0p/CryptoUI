//
//  TabBarView.swift
//  CryptoUI
//
//  Created by Piyush on 15/08/25.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            AnalyticsView()
                .tabItem{
                    Label("Analytic", systemImage: "chart.line.uptrend.xyaxis")
                }
            
            ExchangeView()
                .tabItem{
                    Label("Exchange", systemImage: "arrow.trianglehead.2.clockwise")
                }
            
            Text("comming soon")
                .tabItem{
                    Label("Record", systemImage: "chart.bar.horizontal.page")
                }
            
            Text("comming soon")
                .tabItem{
                    Label("Wallet", systemImage: "wallet.bifold")
                }

        }
    }
}

#Preview {
    TabBarView()
}
