//
//  OutlineGroup.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/1.
//

import SwiftUI

struct BaseOutlineGroup: View {
    var body: some View {
        OutlineGroup(data, children: \.children){item in
            Text("\(item.description)")
        }
    }
}

struct OutlineGroup_Previews: PreviewProvider {
    static var previews: some View {
        BaseOutlineGroup()
    }
}
