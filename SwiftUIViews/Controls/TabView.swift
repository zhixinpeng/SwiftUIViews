//
//  TabView.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/1.
//

import SwiftUI

struct BaseTabView: View {
    var body: some View {
        TabView {
            Text("第一个标签页")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("第一")
                }
            Text("又一个标签页")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("第二")
                }
            Text("最后一个标签页")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("第三")
                }
        }
        .font(.headline)
    }
}

struct SelectionTabView: View {
    @State private var selection: Int = 0
    
    var body: some View {
        VStack {
            Text("目前在第 \(selection + 1) 个标签页")
            TabView(selection: $selection){
                Text("第一个标签页")
                    .tabItem {
                        Image(systemName: "1.square.fill")
                        Text("第一")
                    }
                    .tag(0)
                Text("又一个标签页")
                    .tabItem {
                        Image(systemName: "2.square.fill")
                        Text("第二")
                    }
                    .tag(1)
                Text("最后一个标签页")
                    .tabItem {
                        Image(systemName: "3.square.fill")
                        Text("第三")
                    }
                    .tag(2)
            }
            .font(.headline)
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BaseTabView()
            SelectionTabView()
        }
    }
}
