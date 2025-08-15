//
//  ExchangeDetailView.swift
//  CryptoUI
//
//  Created by Piyush on 15/08/25.
//

import SwiftUI

struct ExchangeDetailView: View {
    var body: some View {
        ScrollView(showsIndicators: false){
            ZStack{
                VStack(spacing: 90){
                    VStack(spacing: 20){
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: .infinity, height: 400)
                            .overlay(
                                ZStack{
                                    VStack{
                                        Rectangle()
                                            .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.09))
                                            .frame(width: .infinity, height: 195)
                                            .overlay(
                                                ExchDetailSendView()
                                            )
                                    }
                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                                    
                                    
                                    
                                    VStack{
                                        Rectangle()
                                            .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.09))
                                            .frame(width: .infinity, height: 195)
                                            .overlay(
                                                ExchDetailRecieveView()
                                            )
                                        
                                    }
                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                                    
                                    VStack{
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 55, height: 55)
                                            .background(
                                                LinearGradient(
                                                    stops: [
                                                        Gradient.Stop(color: Color(red: 0.16, green: 0.16, blue: 0.17), location: 0.00),
                                                        Gradient.Stop(color: Color(red: 0.05, green: 0.05, blue: 0.05), location: 1.00),
                                                    ],
                                                    startPoint: UnitPoint(x: 0.9, y: 0),
                                                    endPoint: UnitPoint(x: 0.18, y: 1)
                                                )
                                                .overlay(
                                                    Rectangle()
                                                        .foregroundColor(.clear)
                                                        .frame(width: 35, height: 35)
                                                        .overlay(
                                                            ZStack{
                                                                RoundedRectangle(cornerRadius: 8)
                                                                    .stroke(.gray,lineWidth: 1)
                                                                
                                                                Image(systemName: "arrow.up.arrow.down")
                                                                    .font(.system(size: 14, weight: .bold))
                                                            }
                                                        )
                                                    
                                                        .cornerRadius(8)
                                                )
                                            )
                                            .cornerRadius(10)
                                    }
                                }
                            )
                            .cornerRadius(30)
                        
                        GeometryReader{ geo in
                            Button(action: {
                                
                            }){
                                Text("Exchange")
                                    .font(.system(size: 16, weight: .semibold))
                                    .foregroundColor(.white)
                                    .frame(width: geo.size.width, height: 55)
                                    .background(Color(red: 0.12, green: 0.3, blue: 0.86))
                                    .cornerRadius(30)
                            }.glassEffect()
                        }
                    }
                    
                    VStack(spacing: 10){
                        HStack{
                            Text("Rate")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.white.opacity(0.7))
                            
                            Spacer()
                            
                            Text("1 ETH = ₹ 1,76,138.80")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.white.opacity(0.8))
                        }
                        
                        HStack{
                            Text("Spread")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.white.opacity(0.7))
                            
                            Spacer()
                            
                            Text("0.2%")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.white.opacity(0.8))
                        }
                        
                        HStack{
                            Text("Gas fee")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.white.opacity(0.7))
                            
                            Spacer()
                            
                            Text("₹ 422.73")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.white.opacity(0.8))
                        }
                        
                        HStack{
                            Text("You will recieve")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.white.opacity(0.7))
                            
                            Spacer()
                            
                            Text("₹ 1,75,716.07")
                                .font(.system(size: 18, weight: .medium))
                                .foregroundColor(.white)
                        }
                        
                        
                    }
                    
                    Spacer()
                }
                .padding()
                
            }
        }
    }
}




#Preview {
    ExchangeDetailView()
}
