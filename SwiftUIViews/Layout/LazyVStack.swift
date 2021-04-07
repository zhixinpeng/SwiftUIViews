//
//  LazyVStack.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/2.
//

import SwiftUI

struct BaseLazyVStack: View {
    var body: some View {
        ScrollView {
            // 惰性初始化
            // 在子视图即将出现在屏幕上的时候，再初始化子视图
            LazyVStack(alignment: .leading, spacing: 5){
                ForEach(1...100, id: \.self){
                    Text("行 \($0)")
                        .font(.title)
                }
            }
        }
    }
}

struct LazyVStack_Previews: PreviewProvider {
    static var previews: some View {
        BaseLazyVStack()
    }
}
