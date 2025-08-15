//
//  ExchangeDisplayCard.swift
//  CryptoUI
//
//  Created by Piyush on 15/08/25.
//

import Foundation
import SwiftUI

struct ExchDisplayCard: View{
    var body: some View{
        ZStack{
           
            VStack{
                Rectangle()
                    .foregroundColor(Color(red: 0.07, green: 0.09, blue: 0.41))
                    .frame(width: .infinity, height: 203)
                    
                    .cornerRadius(20)
                    .padding(.leading, 26)
                    .padding(.trailing, 26)
                    
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
            VStack{
                Rectangle()
                    .foregroundColor(Color(red: 0.16, green: 0.12, blue: 0.5))
                    .frame(maxWidth: .infinity, maxHeight: 190)
                    
                    .cornerRadius(20)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                    
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
            VStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(maxWidth: .infinity, maxHeight: 177)
                    .background(
                        LinearGradient(
                            stops: [
                                Gradient.Stop(color: Color(red: 0.38, green: 0.33, blue: 0.87), location: 0.00),
                                Gradient.Stop(color: Color(red: 0.12, green: 0.15, blue: 0.4), location: 1.00),
                            ],
                            startPoint: UnitPoint(x: 0, y: 0.43),
                            endPoint: UnitPoint(x: 1, y: 0.68)
                        )
                    )
                    .overlay(
                        VStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 50, height: 30)
                                .overlay(
                                    Text("INR")
                                        .font(.system(size: 14,weight: .medium))
                                )
                                .background(.black.opacity(0.2))
                                .cornerRadius(10)
                            
                            VStack(spacing: 10){
                                Text("1,57,342.05")
                                    .font(.system(size: 40, weight: .medium))
                                
                                HStack(spacing: 30){
                                    Text("₹ 1,342")
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Text("+4.6%")
                                        .font(.system(size: 14, weight: .medium))
                                        .foregroundColor(.green)
                                }
                            }
                        }
                    )
                    .cornerRadius(20)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
        .frame(maxWidth:.infinity, maxHeight: 203)
        
    }
    }

