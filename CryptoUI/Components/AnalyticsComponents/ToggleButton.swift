//
//  ToggleButton.swift
//  CryptoUI
//
//  Created by Piyush on 14/08/25.
//

import Foundation
import SwiftUI

struct ToggleButton: View{
    @State private var isOn = false
    var body: some View{
        ZStack {
            Capsule()
                .foregroundColor(.white.opacity(0.3))
                .frame(width: 90, height: 45)
            HStack {
                if isOn {
                    Spacer()
                }
                
                Capsule()
                    .foregroundColor(Color(red: 0.06, green: 0.05, blue: 0.07))
                    .frame(width: 45, height: 45)
                
                if !isOn {
                    Spacer()
                }
            }
            .frame(width: 90, height: 45)
            
            HStack(spacing: 30){
                Image(systemName: "dollarsign")
                    .foregroundColor(!isOn ? .white : .white.opacity(0.5))
                Image(systemName: "bitcoinsign")
                    .foregroundColor(isOn ? .white : .white.opacity(0.5))
            }
        }
        .onTapGesture {
            withAnimation(.spring(response: 0.3, dampingFraction: 0.6)) {
                isOn.toggle()
            }
        }
    }
}
