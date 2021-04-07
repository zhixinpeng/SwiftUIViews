//
//  ScrollView.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/1.
//

import SwiftUI

struct BaseScrollView: View {
    var body: some View {
        ScrollView([.vertical, .horizontal], showsIndicators: true){
            Text("起始")
            HStack {
                Text("左")
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 1000, height: 1500)
                Text("右")
            }
            Text("截止")
        }
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        BaseScrollView()
    }
}
