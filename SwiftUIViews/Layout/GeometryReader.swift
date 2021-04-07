//
//  GeometryReader.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/1.
//

import SwiftUI

struct BaseGeometryReader: View {
    var body: some View {
        Rectangle()
            .stroke(lineWidth: 5)
            .frame(width: 200, height: 200, alignment: .center)
            .overlay(content)
    }
    
    var content: some View {
        GeometryReader { geometry in
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: geometry.size.width / 2, height: geometry.size.height / 2)
                .offset(x: geometry.size.width / 4, y: geometry.size.height / 4)
        }
    }
}

struct SafeAreaGeometryReader: View {
    var body: some View {
        Color.white.ignoresSafeArea()
            .overlay(content)
    }
    
    var content: some View {
        GeometryReader { geometry in
            List {
                Text("在模拟器中翻转屏幕，来观察 4 条边上 safeArea 的数值变化")
                    .bold()
                Text("safeAreaInsets.top: \(geometry.safeAreaInsets.top)")
                Text("safeAreaInsets.bottom: \(geometry.safeAreaInsets.bottom)")
                Text("safeAreaInsets.leading: \(geometry.safeAreaInsets.leading)")
                Text("safeAreaInsets.trailing: \(geometry.safeAreaInsets.trailing)")
            }
        }
    }
}

struct FrameGeometryReader: View {
    var body: some View {
        VStack {
            Rectangle()
                .stroke(lineWidth: 5)
                .frame(width: 150, height: 150)
                .overlay(content)
            Spacer()
        }
    }
    
    var content: some View {
        GeometryReader { geometry in
            ZStack {
                Rectangle()
                    .path(in: geometry.frame(in: .local))
                    .foregroundColor(.red)
                Rectangle()
                    .path(in: geometry.frame(in: .global))
                    .foregroundColor(.blue)
            }
        }
    }
}

struct GeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BaseGeometryReader()
            SafeAreaGeometryReader()
            FrameGeometryReader()
        }
    }
}
