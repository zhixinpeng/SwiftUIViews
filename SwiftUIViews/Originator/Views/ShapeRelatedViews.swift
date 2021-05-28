//
//  ShapeRelatedViews.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/5/18.
//

import SwiftUI

struct ShapeRelatedViews: View {
    var body: some View {
        VStack {
            // MARK: - Rectangle
            Rectangle()
                .frame(width: 100, height: 100)
            
            // MARK: - RoundedRectangle
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .frame(width: 100, height: 100)
            
            // MARK: - Circle
            Circle()
                .frame(width: 100, height: 100)
            
            // MARK: - Capsule
            Capsule()
                .frame(width: 100, height: 50)
            
            // MARK: - Ellipse
            Ellipse()
                .frame(width: 100, height: 50)
        }
        .foregroundColor(.yellow)
    }
}

struct ShapeRelatedViews_Previews: PreviewProvider {
    static var previews: some View {
        ShapeRelatedViews()
    }
}
