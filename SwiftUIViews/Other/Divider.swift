//
//  Divider.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/6.
//

import SwiftUI

struct BaseDivider: View {
    var body: some View {
        VStack {
            HStack {
                Text("左").font(.title)
                Divider()
                Text("右").font(.title)
            }
            VStack {
                Text("上").font(.title)
                Divider()
                Text("下").font(.title)
            }
            List {
                Section {
                    Button("按钮一"){}
                    Button("按钮二"){}
                }
                Divider()
                Section {
                    Button("按钮三"){}
                }
            }
            .listStyle(InsetGroupedListStyle())
        }
    }
}

struct Divider_Previews: PreviewProvider {
    static var previews: some View {
        BaseDivider()
    }
}
