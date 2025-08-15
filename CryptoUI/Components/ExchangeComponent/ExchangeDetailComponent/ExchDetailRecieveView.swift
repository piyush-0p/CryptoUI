//
//  ExchDetailRecieveView.swift
//  CryptoUI
//
//  Created by Piyush on 16/08/25.
//
import SwiftUI

struct ExchDetailRecieveView : View{
    var body : some View{
        VStack(alignment: .leading, spacing: 20){
            HStack{
                HStack(spacing: 20){
                    Circle()
                        .fill(Color.clear)
                        .frame(width: 42, height: 42)
                        .background(
                            Image("rupees")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 42, height: 42)
                                .clipShape(Circle())
                        )
                    
                    HStack{
                        Text("INR")
                            .font(.system(size: 20, weight: .medium))
                        
                        Button(action: {
                            
                        }){
                            Image(systemName: "chevron.down")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .bold))
                        }
                    }
                }
                
                Spacer()
                
                Text("Recieve")
                    .font(.system(size: 14, weight: .medium))
            }
            
            Text("₹ 4,65,006.44")
                .font(.system(size: 32, weight: .medium))
            
            HStack{
                Text("Balance")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.white.opacity(0.5))
                
                Spacer()
                
                Text("4,35,804")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.white.opacity(0.5))
            }
        }
            .padding()
    }
}
