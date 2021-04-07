//
//  Text.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/1.
//

import SwiftUI

struct BaseText: View {
    var body: some View {
        VStack {
            Text("Selected 名著精选")
            Text("Hamlet 哈姆雷特")
                .font(.title)
            Text("by William Shakespeare 莎士比亚著")
                .font(.system(size: 12, weight: .light, design: .serif))
                .italic()
            Text("To be, or not to be, that is the question:")
                .frame(width: 100)
            Text("Brevity is the soul of wit.")
                .frame(width: 100)
                .lineLimit(1)
            Text("Text(\"Hello World!\")")
                .font(.custom("Menlo", size: 17))
        }
    }
}

struct Text_Previews: PreviewProvider {
    static var previews: some View {
        BaseText()
    }
}
