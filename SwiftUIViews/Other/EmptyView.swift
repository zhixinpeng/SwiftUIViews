//
//  EmptyView.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/6.
//

import SwiftUI

struct BaseEmptyView: View {
    var body: some View {
        VStack {
            // EmptyView 表示空视图
            // 很少会直接创建 EmptyView，在泛型中如果一个视图类型没有初始化，就会被当成 EmptyView
            EmptyView()
        }
    }
}

struct EmptyView_Previews: PreviewProvider {
    static var previews: some View {
        BaseEmptyView()
    }
}
