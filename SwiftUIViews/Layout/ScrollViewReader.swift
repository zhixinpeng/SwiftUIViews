//
//  ScrollViewReader.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/2.
//

import SwiftUI

struct BaseScrollViewReader: View {
    var body: some View {
        // 用于实现 ScrollView 中的快速跳转
        // 回调函数会提供一个 ScrollViewProxy 类型的参数
        // 这个参数有一个 scrollTo 函数，可以通过锚点跳转到对应的位置
        ScrollViewReader { scrollView in
            HStack {
                Text("跳转到：")
                ForEach(0..<10){ i in
                    Button("\(i * 10)") {
                        // 第二个参数表示跳转后对应视图的位置
                        // center 表示跳转后视图在界面中央
                        scrollView.scrollTo(i * 10, anchor: .center)
                    }
                }
            }
            ScrollView {
                LazyVStack {
                    ForEach(0..<100){ i in
                        Text("\(i)").font(.title).id(i)
                    }
                    ForEach(0..<10){ i in
                        // id 可以重复，但只会识别第一个
                        Text("\(i)").id(i)
                    }
                }
            }
        }
    }
}

struct ScrollViewReader_Previews: PreviewProvider {
    static var previews: some View {
        BaseScrollViewReader()
    }
}
