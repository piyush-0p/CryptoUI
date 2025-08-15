//
//  AnalyticsView.swift
//  CryptoUI
//
//  Created by Piyush on 14/08/25.
//

import SwiftUI

struct AnalyticsView: View {
    @State private var isExpanded: Bool = false
    @Namespace private var namespace
    
    let cards = DataProvider.cards
    let recentCards = DataProvider.recentCards
    
    var body: some View {
        NavigationStack{
            ZStack{
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
                                
                                SectionTitle(title: "Recent Transaction")
                                
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
                    }
                }
                
                // "BOTTOM SCREEN GRADIENT : INACTIVE
                
//                VStack{
//                    Rectangle()
//                      .foregroundColor(.clear)
//                      .frame(maxWidth: .infinity, maxHeight: 112)
//                      .background(
//                        LinearGradient(
//                          stops: [
//                            Gradient.Stop(color: Color.clear, location: 0.00),
//                            Gradient.Stop(color: Color(red: 0.18, green: 0.19, blue: 0.61).opacity(0.7), location: 1.00),
//                          ],
//                          startPoint: UnitPoint(x: 0.5, y: 0),
//                          endPoint: UnitPoint(x: 0.5, y: 1.5)
//                        )
//                      )
//                }
//                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            }
            .ignoresSafeArea(edges: .top)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    GlassEffectContainer(spacing: 20.0) {
                          HStack(spacing: 20.0) {
                              Button(action:{
                                  withAnimation {
                                      isExpanded.toggle()
                                  }
                              }){
                                  Image(systemName: "line.3.horizontal")
                                      .frame(width: 35.0, height: 35.0)
                                      .font(.system(size: 18))
                                      .glassEffect()
                                      .glassEffectID("menu", in: namespace)
                              }

                              if isExpanded {
                                  Image(systemName: "person.crop.circle")
                                      .frame(width: 35.0, height: 35.0)
                                      .font(.system(size: 18))
                                      .glassEffect()
                                      .glassEffectID("accountt", in: namespace)
                              }
                              
                              if isExpanded {
                                  Image(systemName: "gear")
                                      .frame(width: 35.0, height: 35.0)
                                      .font(.system(size: 18))
                                      .glassEffect()
                                      .glassEffectID("setting", in: namespace)
                              }
                          }
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


