//
//  FinanceCardView.swift
//  CryptoUI
//
//  Created by Piyush on 14/08/25.
//

import Foundation
import SwiftUI

struct FinanceCardView: View {
    let card: FinanceCard
    
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 204, height: 118)
            .background(Color(red: 0.05, green: 0.05, blue: 0.05))
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(
                        LinearGradient(
                            stops: [
                                Gradient.Stop(color: Color(red: 0.44, green: 0.44, blue: 0.44), location: 0.00),
                                Gradient.Stop(color: Color(red: 0.17, green: 0.17, blue: 0.17), location: 1.00),
                            ],
                            startPoint: UnitPoint(x: 1.03, y: 0),
                            endPoint: UnitPoint(x: 0, y: 1)
                        ),
                        lineWidth: 2
                    )
            )
            .overlay(
                ZStack {
                    HStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 42, height: 42)
                            .background(
                                Image(card.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 42, height: 42)
                                    .clipped()
                            )
                            .cornerRadius(42)
                        
                        Spacer()
                        
                        Text(card.title)
                            .font(.system(size: 14))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding()
                    
                    HStack {
                        Text(card.price)
                            .font(.system(size: 16))
                        
                        Spacer()
                        
                        Text(card.change)
                            .font(.system(size: 12))
                            .foregroundColor(card.changeColor)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                    .padding()
                }
            )
            .cornerRadius(12)
    }
}
