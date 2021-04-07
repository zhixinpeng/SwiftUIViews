//
//  Shapes.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/6.
//

import SwiftUI

struct BaseShapes: View {
    let columns: [GridItem] = [GridItem(.adaptive(minimum: 100, maximum: 200))]
    
    var body: some View {
        LazyVGrid(columns: columns){
            ShapeWidthLabel(shape: Capsule(), label: "胶囊型")
            ShapeWidthLabel(shape: Circle(), label: "圆形")
            ShapeWidthLabel(shape: Ellipse(), label: "椭圆")
            ShapeWidthLabel(shape: Rectangle(), label: "长方形")
            ShapeWidthLabel(shape: RoundedRectangle(cornerRadius: 25.0), label: "圆角矩形")
            ShapeWidthLabel(shape: RoundedRectangle(cornerSize: CGSize(width: 25, height: 50)), label: "椭圆角矩形")
        }
    }
}

struct ShapeWidthLabel<Content>: View where Content: View {
    let shape: Content
    let label: String
    
    var body: some View {
        VStack {
            Text(label)
            shape.foregroundColor(.blue)
        }
        .frame(height: 100)
        .padding()
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        BaseShapes()
    }
}
