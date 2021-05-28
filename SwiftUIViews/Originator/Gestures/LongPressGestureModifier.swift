//
//  LongPressGesture.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/5/19.
//

import SwiftUI

struct LongPressGestureModifier: View {
    @State var currentGesture = "无"
    @State var longPressed = false
    
    var body: some View {
        VStack {
            Text("识别出的手势：\(currentGesture)")
                .font(.largeTitle)
                .bold()
            
            Divider().padding()
            
            RoundedRectangle(cornerRadius: 25.0)
                .aspectRatio(1, contentMode: .fit)
                .foregroundColor(longPressed ? .orange : .blue)
                .padding()
                .onLongPressGesture {
                    currentGesture = "长按"
                    longPressed.toggle()
                }
        }
    }
}

struct LongPressGestureModifier_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGestureModifier()
    }
}
