//
//  HStack.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/2.
//

import SwiftUI

struct BaseHStack: View {
    var body: some View {
        HStack(alignment: .top, spacing: 10){
            ForEach(1...5, id: \.self){
                Text("\($0) 号选手")
            }
        }
    }
}

struct LayerPriorityBaseHStack: View {
    var body: some View {
        HStack {
            Text("这个字符串为默认优先级。")
                .font(.largeTitle)
                .border(Color.gray)
            
            Spacer()
            
            Text("这个字符串的优先级更高。")
                .font(.largeTitle)
                .layoutPriority(1)
                .border(Color.gray)
        }
    }
}

struct HStack_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BaseHStack()
            LayerPriorityBaseHStack()
        }
    }
}
