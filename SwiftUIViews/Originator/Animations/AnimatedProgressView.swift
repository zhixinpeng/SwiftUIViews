//
//  AnimatedProgressView.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/5/19.
//

import SwiftUI

struct AnimatedProgressView: View {
    @State var progress: CGFloat = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 6)
                .frame(width: 90, height: 90)
                .foregroundColor(Color(.systemGray6))
            
            Rectangle()
                .frame(width: 24, height: 24)
                .foregroundColor(.orange)
                .cornerRadius(2)
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(style: StrokeStyle(lineWidth: 6, lineCap: .round, lineJoin: .round))
                .frame(width: 90, height: 90)
                .foregroundColor(.orange)
                .rotationEffect(.degrees(-90))
                .animation(.easeInOut.speed(0.25))
                .onAppear() {
                    progress = 1
                }
        }
    }
}

struct AnimatedProgressView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedProgressView()
    }
}
