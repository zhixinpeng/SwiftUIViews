//
//  AngularGradient.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/6.
//

import SwiftUI

struct BaseAngularGradient: View {
    var body: some View {
        // AngularGradient 表示环状的颜色渐变
        // center 表示渐变的中心
        // startAngle 和 endAngle 表示渐变的起始角度和结束角度
        // 剩余的部分会被两端的颜色均分
        AngularGradient(
            gradient: Gradient(colors: [Color.red, Color.blue]),
            center: .center,
            startAngle: Angle(degrees: 0),
            endAngle: Angle(degrees: 180)
        )
    }
}

struct AngularGradient_Previews: PreviewProvider {
    static var previews: some View {
        BaseAngularGradient()
    }
}
