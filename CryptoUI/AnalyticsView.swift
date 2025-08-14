//
//  AnalyticsView.swift
//  CryptoUI
//
//  Created by Piyush on 14/08/25.
//

import SwiftUI

struct AnalyticsView: View {
    
    let cards = [
           FinanceCard(imageName: "bitcoin", title: "Bitcoin (BTC)", price: "₹ 75,62,502.14", change: "+3.2%", changeColor: .green),
           FinanceCard(imageName: "ether", title: "Ethereum (ETH)", price: "₹ 2,34,502.50", change: "-1.4%", changeColor: .red),
       ]
    
    let recentCards = [
        TransactionCard(imageName: "bitcoin", title: "Recieve", date: "20 March", coin: "BTC", amount: "+0.002126"),
        TransactionCard(imageName: "arrows", title: "Recieve", date: "24 March", coin: "BTC", amount: "+0.003128"),
        TransactionCard(imageName: "ether", title: "Recieve", date: "26 March", coin: "ETH", amount: "+0.009124"),
        TransactionCard(imageName: "bitcoin", title: "Recieve", date: "30 March", coin: "BTC", amount: "+0.002116"),
    ]
    
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: false){
                ZStack{
                    Color.black.ignoresSafeArea()
                    VStack(alignment: .leading){
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: .infinity, height: 240)
                            .background(
                                Image("analyticsImg")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(maxWidth: .infinity, maxHeight: 240)
                                    .clipped()
                            )
                            .overlay(
                                VStack{
                                    Spacer()
                                    VStack(alignment: .leading){
                                        HStack{
                                            HStack{
                                                Text("Portfolio Value")
                                                    .font(.system(size: 14))
                                                    .foregroundColor(Color(red: 0.99, green: 0.99, blue: 0.98).opacity(0.8))
                                                
                                                Image(systemName: "chevron.right")
                                                    .font(.system(size: 14))
                                                    .foregroundColor(.white)
                                            }
                                            
                                            Spacer()
                                            
                                            ToggleButton()
                                        }
                                        
                                        HStack{
                                            Image(systemName: "indianrupeesign")
                                                .font(.system(size: 36, weight: .semibold))
                                            
                                            Text("1,57,342.05")
                                                .font(.system(size: 36, weight: .semibold))
                                        }
                                    }
                                    .padding()
                                }
                            )
                            .cornerRadius(30)
                        
                        DataChartView()
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 12) {
                                ForEach(cards) { card in
                                    FinanceCardView(card: card)
                                }
                            }
                        }
                        
                        .padding()
                        
                        VStack(alignment: .leading){
                            
                            Text("Recent Transcation")
                            
                            VStack(spacing:10){
                                ForEach(recentCards) { recent in
                                    TransactionCardView(transaction: recent)
                                }
                            }
                        }
                        .padding()
                        .padding(.top, -15)
                        
                        Spacer()
                    }
                    //.ignoresSafeArea(edges: .top)
                }
            }
            .ignoresSafeArea()
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    //more item button
                    Button(action:{
                        print("more item button tap")
                    }){
                        Image(systemName: "line.3.horizontal")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing){
                    //notification bar button item
                    Button(action:{
                        print("notification button tap")
                    }){
                        Image(systemName: "bell")
                    }.badge(3)
                }
            }
        }
    }
}





#Preview {
    AnalyticsView()
    //ToggleButton()
    //FinanceCardView()
    //TransactionCardView()
}


