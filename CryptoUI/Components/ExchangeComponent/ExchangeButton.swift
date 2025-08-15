//
//  ExchangeButton.swift
//  CryptoUI
//
//  Created by Piyush on 15/08/25.
//

import Foundation
import SwiftUI

struct ExchButtons: View{
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
                
            }){
                Image(systemName: "plus")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(.white)
            }
            .frame(width: 60, height: 60)
            .glassEffect()
            
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
