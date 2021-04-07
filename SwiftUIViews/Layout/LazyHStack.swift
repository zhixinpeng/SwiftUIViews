//
//  LazyHStack.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/2.
//

import SwiftUI

struct BaseLazyHStack: View {
    var body: some View {
        ScrollView(.horizontal){
            // 和 HStack 相同，唯一区别是会“惰性初始化”，也就是只有在子视图即将出现在屏幕上时，再初始化子视图
            LazyHStack(alignment: .top, spacing: 10){
                ForEach(1...100, id: \.self){
                    Text("列 \($0)")
                        .font(.title)
                }
            }
        }
    }
}

struct LazyHStack_Previews: PreviewProvider {
    static var previews: some View {
        BaseLazyHStack()
    }
}
