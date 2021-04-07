//
//  ColorPicker.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/3/31.
//

import SwiftUI

struct BaseColorPicker: View {
    @State var bgColor = Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)
    
    var body: some View {
        VStack {
            ColorPicker("选择喜欢的颜色", selection: $bgColor)
            ColorPicker("选择喜欢的颜色", selection: $bgColor, supportsOpacity: false)
            ColorPicker(selection: $bgColor){
                Text("选择喜欢的颜色")
            }
        }
    }
}

struct ColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        BaseColorPicker()
    }
}
