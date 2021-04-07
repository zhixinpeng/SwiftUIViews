//
//  LazyVGrid.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/2.
//

import SwiftUI

struct BaseLazyVGrid: View {
    // GridItem 用来控制具体的横向布局方式，具体来说，是每一行的高度是多少（宽度可以无限延伸）
    // 目前有 3 种 GridItem
    // - fixed: 标识这行的高度固定为传入的高度
    // - flexible: 在一定范围内灵活的取一个高度，默认最小为 10，最大为 .infinity
    // - adaptive: 类似 flexible，表示行高可以在指定范围内灵活变动。
    // 区别在于当 adaptive 会尽可能表示为多行，尽量把空间占满，而 flexible 只会表示一行
    // 在布局的时候，会先防止 fixed 类型的行，将剩余的空间平分给 flexible 和 adaptive
    // 当空间不足的时候，优先摆放 fixed，其次为 flexible，然后为 adaptive
    let columns: [GridItem] = [GridItem(.fixed(50)), GridItem(.flexible(minimum: 50, maximum: 120)), GridItem(.adaptive(minimum: 60, maximum: 80))]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            // LazyVGrid 用于进行更为自由的横向栅格布局
            // Lazy 意味着子视图会在即将出现在屏幕上的时候被渲染
            // Grid 的布局主要通过传入一个 [GridItem] 类型的 columns 参数控制
            // 尝试模拟器中转动屏幕，试试横屏和竖屏
            LazyVGrid(columns: columns){
                ForEach(0..<100){ i in
                    ColorRect(i: i, horizontal: false)
                        .frame(height: 100)
                }
            }
        }
    }
}

struct PinnedLazyVGrid: View {
    let columns: [GridItem] = [GridItem(.fixed(80), spacing: 0), GridItem(.fixed(80), spacing: 10), GridItem(.fixed(80), spacing: 0)]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            LazyVGrid(columns: columns, spacing: 40, pinnedViews: [.sectionHeaders]){
                Section(header: Text("头注")){
                    ForEach(0..<30){ i in
                        ColorRect(i: i, horizontal: false)
                            .frame(height: 100)
                    }
                }
            }
        }
    }
}

struct LazyVGrid_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BaseLazyVGrid()
            PinnedLazyVGrid()
        }
    }
}
