//
//  ZStack.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/6.
//

import SwiftUI

struct BaseZStack: View {
    var body: some View {
        ZStack {
            Rectangle().fill(Color.blue)
            Circle().fill(Color.orange)
            Text("ZStack").font(.title)
        }
    }
}

struct IgnoreSafeZStack: View {
    @State private var fullText: String = ""
    
    var body: some View {
        ZStack {
            ZStack {
                Color.purple
            }
            .ignoresSafeArea(.all, edges: .bottom)
            
            Color.green
            
            TextField("您的输入：", text: $fullText)
        }
    }
}

struct ZIndexZStack: View {
    var body: some View {
        ZStack {
            Text("ZStack").font(.title).zIndex(2)
            Circle().fill(Color.orange).zIndex(1)
            Rectangle().fill(Color.blue).zIndex(0)
        }
    }
}

struct ZStack_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BaseZStack()
            IgnoreSafeZStack()
            ZIndexZStack()
        }
    }
}
