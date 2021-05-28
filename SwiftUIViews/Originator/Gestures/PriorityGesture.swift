//
//  PriorityGesture.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/5/19.
//

import SwiftUI

struct PriorityGesture: View {
    @State var magnifyBy = CGFloat(1.0)
    @State var angle = Angle(degrees: 0.0)
    
    var body: some View {
        let magnification = MagnificationGesture().onChanged { magnifyBy in
            self.magnifyBy = magnifyBy
        }
        
        let rotation = RotationGesture().onChanged { angle in
            self.angle = angle
        }
        
        HStack {
            Image("6")
                .gesture(rotation)
                .rotationEffect(angle)
        }
        .highPriorityGesture(magnification)
        .scaleEffect(magnifyBy)
    }
}

struct PriorityGesture_Previews: PreviewProvider {
    static var previews: some View {
        PriorityGesture()
    }
}
