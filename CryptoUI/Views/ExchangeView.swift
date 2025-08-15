//
//  ExchangeView.swift
//  CryptoUI
//
//  Created by Piyush on 15/08/25.
//

import SwiftUI

struct ExchangeView: View {
    let transaction = DataProvider.exchangeTrac
    
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                ZStack{
                    VStack(spacing: 40){
                        VStack(spacing: 20){
                            ExchDisplayCard()
                            ExchButtons()
                        }
                        
                        VStack(spacing: 20){
                            SectionTitle(title: "Transaction", activity: "Last 4 Days")
                            
                            VStack(){
                            ForEach(transaction) {trans in
                                    TransactionCardView(transaction: trans)
                                }
                            }
                        }
                        
                        Spacer()
                    }
                    .padding()
                }
                .navigationTitle("Exchange")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}



#Preview {
  ExchangeView()
   // ExchDisplayCard()
  //  SectionTitle()
}
