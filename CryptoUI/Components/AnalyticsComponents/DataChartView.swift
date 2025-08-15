//
//  DataChartView.swift
//  CryptoUI
//
//  Created by Piyush on 14/08/25.
//

import SwiftUI

struct DataChartView: View {
     @State private var selectedTime: String? = nil
     
     let times = ["1h", "8h", "1d", "1w", "1m", "6m", "1y"]
     
     let heights: [CGFloat] = [
         95.29875, 162.56847, 120.92531, 156.16182,
         148.95436, 181.78838, 193
     ]
     
     @State private var selectedIndex: Int? = nil
     
     let layout = Array(repeating: GridItem(.flexible()), count: 7)
     
     var body: some View {
         ZStack{
             VStack(){
                 LazyVGrid(columns: layout, spacing: 5) {
                     ForEach(times, id: \.self) { time in
                         Text(time)
                             .font(.system(size: 17, weight: .medium))
                             .foregroundColor(selectedTime == time ? .white : .white.opacity(0.5))
                             .padding(.vertical, 8)
                             .padding(.horizontal, 5)
                             .background(
                                 RoundedRectangle(cornerRadius: 15)
                                     .fill(selectedTime == time ? Color.white.opacity(0.2) : Color.clear)
                             )
                             .onTapGesture {
                                 selectedTime = time
                             }
                     }
                 }
                 Spacer()
                 HStack(alignment: .bottom, spacing: 8) {
                     ForEach(heights.indices, id: \.self) { index in
                         let height = heights [index]
                         
                         Rectangle()
                             .foregroundColor(.clear)
                             .frame(width: 45, height: height)
                             .background(
                                 LinearGradient(
                                     stops: [
                                         .init(color: Color(red: 0.08, green: 0.08, blue: 0.08), location: 0.16),
                                         .init(color: Color(red: 0.01, green: 0.01, blue: 0.01), location: 0.97)
                                     ],
                                     startPoint: .top,
                                     endPoint: .bottom
                                 )
                             )
                             .overlay(
                                 Group {
                                     if selectedIndex == index {
                                         Rectangle()
                                             .fill(Color.white)
                                             .frame(width: 2, height: height)
                                     }
                                 }
                             )
                             .cornerRadius(8)
                             .onTapGesture {
                                 selectedIndex = (selectedIndex == index) ? nil : index
                             }
                     }
                 }
                 .overlay(
                     Path { path in
                         let spacing: CGFloat = 45 + 8
                         for (index, height) in heights.enumerated() {
                             let x = CGFloat(index) * spacing + spacing / 2
                             let y = -height
                             if index == 0 {
                                 path.move(to: CGPoint(x: x, y: y))
                             } else {
                                 let previousX = CGFloat(index - 1) * spacing + spacing / 2
                                 let previousY = -heights [index - 1]
                                 let controlPoint1 = CGPoint(x: (previousX + x) / 2, y: previousY)
                                 let controlPoint2 = CGPoint(x: (previousX + x) / 2, y: y)
                                 path.addCurve(to: CGPoint(x: x, y: y), control1: controlPoint1, control2: controlPoint2)
                             }
                         }
                     }
                     .stroke(Color.green, lineWidth: 1)
                     .offset(y: 285) 
                 )
             }
         }.frame(width: .infinity, height: 265)
     }
 }

#Preview {
    DataChartView()
}
