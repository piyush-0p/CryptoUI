//
//  DataProvider.swift
//  CryptoUI
//
//  Created by Piyush on 15/08/25.
//

import Foundation
import SwiftUI

struct DataProvider{
    
     static let cards = [
           FinanceCard(imageName: "bitcoin", title: "Bitcoin (BTC)", price: "₹ 75,62,502.14", change: "+3.2%", changeColor: .green),
           FinanceCard(imageName: "ether", title: "Ethereum (ETH)", price: "₹ 2,34,502.50", change: "-1.4%", changeColor: .red),
       ]
    
     static let recentCards = [
        TransactionCard(imageName: "bitcoin", title: "Recieve", date: "20 March", coin: "BTC", amount: "+0.002126"),
        TransactionCard(imageName: "arrows", title: "Recieve", date: "24 March", coin: "BTC", amount: "+0.003128"),
        TransactionCard(imageName: "ether", title: "Recieve", date: "26 March", coin: "ETH", amount: "+0.009124"),
        TransactionCard(imageName: "bitcoin", title: "Recieve", date: "30 March", coin: "BTC", amount: "+0.002116"),
    ]
    
    static let exchangeTrac = [
        TransactionCard(imageName: "recieve", title: "Recieve", date: "20 March", coin: "BTC", amount: "+0.002126"),
        TransactionCard(imageName: "sent", title: "Sent", date: "19 March", coin: "BTC", amount: "+0.003136"),
        TransactionCard(imageName: "sent", title: "Sent", date: "18 March", coin: "LTC", amount: "+0.008176"),
        TransactionCard(imageName: "recieve", title: "Recieve", date: "16 March", coin: "ETH", amount: "+0.004144"),
        TransactionCard(imageName: "recieve", title: "Recieve", date: "14 March", coin: "BTC", amount: "+0.002126")
    ]
    
}
