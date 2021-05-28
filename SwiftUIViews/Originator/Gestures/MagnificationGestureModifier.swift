//
//  MagnificationGestureModifier.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/5/19.
//

import SwiftUI

struct MagnificationGestureModifier: View {
    @GestureState var magnifyBy = CGFloat(1.0)
    
    var magnification: some Gesture {
        MagnificationGesture()
            .updating($magnifyBy) { currentState, gestureState, transaction in
                gestureState = currentState
            }
    }
    
    var body: some View {
        Circle()
            .foregroundColor(.blue)
            .frame(width: 200 * magnifyBy, height: 200 * magnifyBy)
            .gesture(magnification)
    }
}

struct MagnificationGestureModifier_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGestureModifier()
    }
}
