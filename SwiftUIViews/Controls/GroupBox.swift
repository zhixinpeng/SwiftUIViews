//
//  GroupBox.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/3/31.
//

import SwiftUI

struct BaseGroupBox: View {
    var body: some View {
        VStack {
            GroupBox(label: Label("完成训练", systemImage: "checkmark.circle.fill")){
                Text("总计消耗 300 卡路里")
                Text("已完成本周训练目标")
            }
            
            GroupBox {
                Text("总计消耗 300 卡路里")
                Text("已完成本周训练目标")
            }
        }
    }
}

struct GroupBox_Previews: PreviewProvider {
    static var previews: some View {
        BaseGroupBox()
    }
}
