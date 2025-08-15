//
//  TransactionCardView.swift
//  CryptoUI
//
//  Created by Piyush on 14/08/25.
//

import Foundation
import SwiftUI

struct TransactionCardView: View{
    let transaction : TransactionCard
    var body: some View{
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: .infinity, height: 88)
          .background(Color.white.opacity(0.1))
          .overlay(
            ZStack{
                HStack{
                    HStack(spacing: 15){
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 48, height: 48)
                            .background(
                                Image(transaction.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 48, height: 48)
                                    .clipped()
                            )
                            .cornerRadius(42)
                        
                        VStack(alignment: .leading, spacing: 8){
                            Text(transaction.title)
                                .font(.system(size: 16, weight: .medium))
                            
                            Text(transaction.date)
                                .font(.system(size: 14, weight: .medium))
                                .foregroundColor(.white.opacity(0.5))
                        }
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .trailing, spacing: 8){
                        Text(transaction.coin)
                            .font(.system(size: 16, weight: .medium))
                        
                        Text(transaction.amount)
                            .font(.system(size: 18, weight: .medium))
                            
                        
                    }
                }
                .padding()
            }
          )
          .cornerRadius(20)
    }
}
