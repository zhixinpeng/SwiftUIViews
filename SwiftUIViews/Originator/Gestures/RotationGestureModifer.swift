//
//  RotationGestureModifer.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/5/19.
//

import SwiftUI

struct RotationGestureModifer: View {
    @State var angle = Angle(degrees: 0.0)
    
    var rotation: some Gesture {
        RotationGesture()
            .onChanged { angle in
                self.angle = angle
            }
    }
    
    var body: some View {
        Rectangle()
            .foregroundColor(.blue)
            .frame(width: 200, height: 200)
            .rotationEffect(angle)
            .gesture(rotation)
    }
}

struct RotationGestureModifer_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestureModifer()
    }
}
