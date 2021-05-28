//
//  DragGestureModifer.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/5/19.
//

import SwiftUI

struct DragGestureModifer: View {
    @State var isDragging = false
    
    var drag: some Gesture {
        DragGesture()
            .onChanged { _ in
                isDragging = true
            }
            .onEnded { _ in
                isDragging = false
            }
    }
    
    var body: some View {
        Circle()
            .fill(isDragging ? Color.orange : Color.blue)
            .frame(width: 200, height: 200)
            .gesture(drag)
    }
}

struct DragGestureModifer_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureModifer()
    }
}
