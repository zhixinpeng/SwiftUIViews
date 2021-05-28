//
//  CombineGesture.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/5/19.
//

import SwiftUI

struct CombineGesture: View {
    @State var magnifyBy = CGFloat(1.0)
    @State var angle = Angle(degrees: 0.0)
    
    var body: some View {
        let magnification = MagnificationGesture().onChanged { magnifyBy in
            self.magnifyBy = magnifyBy
        }
        
        let rotation = RotationGesture().onChanged { angle in
            self.angle = angle
        }
        
        // MARK: - simultaneously 同时进行
        // MARK: - sequenced 顺序进行
        // MARK: - exclusive 互相排除
        
        let customGesture = magnification.simultaneously(with: rotation)
        
        Image("6")
            .gesture(customGesture)
            .rotationEffect(angle)
            .scaleEffect(magnifyBy)
            .animation(.easeInOut)
    }
}

struct CombineGesture_Previews: PreviewProvider {
    static var previews: some View {
        CombineGesture()
    }
}
