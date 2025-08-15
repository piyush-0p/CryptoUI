//
//  Model.swift
//  CryptoUI
//
//  Created by Piyush on 14/08/25.
//

import Foundation
import SwiftUI

struct FinanceCard: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let price: String
    let change: String
    let changeColor: Color
}

struct TransactionCard: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let date: String
    let coin: String
    let amount: String
}
