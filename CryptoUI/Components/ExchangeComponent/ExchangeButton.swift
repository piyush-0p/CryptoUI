//
//  ExchangeButton.swift
//  CryptoUI
//
//  Created by Piyush on 15/08/25.
//

import Foundation
import SwiftUI

struct ExchButtons: View{
    @State private var goToExchangeDetail = false
    
    var body: some View{
        HStack(spacing: 20){
            Button(action: {
                
            }){
                Image(systemName: "arrow.up")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(.white)
            }
            .frame(width: 60, height: 60)
            .glassEffect()
            
            Button(action: {
                goToExchangeDetail = true
            }){
                Image(systemName: "plus")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(.white)
            }
            .frame(width: 60, height: 60)
            .glassEffect()
            .navigationDestination(isPresented: $goToExchangeDetail) {
                ExchangeDetailView()
            }
            
            Button(action: {
                
            }){
                Image(systemName: "arrow.down")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(.white)
            }
            .frame(width: 60, height: 60)
            .glassEffect()
        }
    }
}
