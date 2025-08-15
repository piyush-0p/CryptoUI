//
//  DataChartView.swift
//  CryptoUI
//
//  Created by Piyush on 14/08/25.
//

import SwiftUI

struct DataChartView: View {
    
    @State private var selectedTime: String? = "1y"
    @State private var selectedIndex: Int? = nil
    
   
    let times = ["1h", "8h", "1d", "1w", "1m", "6m", "1y"]
    let heights: [CGFloat] = [
        95.29875, 162.56847, 120.92531, 156.16182,
        148.95436, 181.78838, 193
    ]
    
  
    let timeSelectorLayout = Array(repeating: GridItem(.flexible()), count: 7)
    private let barWidth: CGFloat = 45
    private let barSpacing: CGFloat = 8

    private var cardXOffset: CGFloat {
        guard let selectedIndex = selectedIndex else { return 0 }
        let totalItemWidth = barWidth + barSpacing

        let centerIndex: CGFloat = CGFloat(heights.count - 1) / 2.0
        
        return (CGFloat(selectedIndex) - centerIndex) * totalItemWidth
    }

    
    var body: some View {
        ZStack {
            VStack {
               
                LazyVGrid(columns: timeSelectorLayout, spacing: 5) {
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
                
                
                HStack(alignment: .bottom, spacing: barSpacing) {
                    ForEach(heights.indices, id: \.self) { index in
                        let height = heights[index]
                        
                        Rectangle()
                            .fill(
                                LinearGradient(
                                    stops: [
                                        .init(color: Color(red: 0.08, green: 0.08, blue: 0.08), location: 0.16),
                                        .init(color: Color(red: 0.01, green: 0.01, blue: 0.01), location: 0.97)
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                            .frame(width: barWidth, height: height)
                            .cornerRadius(8)
                            .overlay(
                               
                                Rectangle()
                                    .fill(Color.white)
                                    .frame(width: 2)
                                    .opacity(selectedIndex == index ? 1 : 0)
                            )
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selectedIndex = (selectedIndex == index) ? nil : index
                                }
                            }
                       
                    }
                }
                .overlay(
                   
                    linePath
                        .stroke(Color.green, lineWidth: 1)
                        .offset(y: 285)
                )
            }
            
            
            if selectedIndex != nil {
                VStack {
                    DataDetailCard()
                        .offset(x: cardXOffset)
                }
                .transition(.opacity.combined(with: .move(edge: .bottom)))
            }
            
        }
        .frame(height: 265)
    }
    
    
    private var linePath: Path {
        Path { path in
            let spacing: CGFloat = barWidth + barSpacing
            for (index, height) in heights.enumerated() {
                let x = CGFloat(index) * spacing + spacing / 2
                let y = -height
                if index == 0 {
                    path.move(to: CGPoint(x: x, y: y))
                } else {
                    let previousX = CGFloat(index - 1) * spacing + spacing / 2
                    let previousY = -heights[index - 1]
                    let controlPoint1 = CGPoint(x: (previousX + x) / 2, y: previousY)
                    let controlPoint2 = CGPoint(x: (previousX + x) / 2, y: y)
                    path.addCurve(to: CGPoint(x: x, y: y), control1: controlPoint1, control2: controlPoint2)
                }
            }
        }
    }
}
struct DataDetailCard: View{
    var body: some View{
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 150, height: 70)
            .background(.black)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.gray,lineWidth: 1)
            )
            .overlay(
                ZStack{
                    VStack(alignment: .leading, spacing: 6){
                        Text("24 March")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.white.opacity(0.7))
                        
                        Text("₹ 1,42,340")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.white)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .padding()
                }
            )
            .cornerRadius(15)
        
    }
}

#Preview {
    DataChartView()
   // DataDetailCard()
}
