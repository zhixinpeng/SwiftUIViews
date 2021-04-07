//
//  VStack.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/2.
//

import SwiftUI

struct BaseVStack: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            ForEach(1...10, id: \.self){
                Text("\($0) 号选手")
            }
        }
    }
}

struct LayerPriorityBaseVStack: View {
    var body: some View {
        VStack {
            Text("这个字符串为默认优先级。")
                .font(.largeTitle)
                .border(Color.gray)
            
            Spacer()
            
            Text("这个字符串的优先级更高。")
                .font(.largeTitle)
                .layoutPriority(1)
                .border(Color.gray)
        }
        .frame(maxWidth: 30)
    }
}

struct VStack_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BaseVStack()
            LayerPriorityBaseVStack()
        }
    }
}
