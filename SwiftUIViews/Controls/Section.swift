//
//  Section.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/1.
//

import SwiftUI

struct BaseSection: View {
    var body: some View {
        List {
            Section {
                Text("低俗小说")
                Text("落水狗")
                
                Section {
                    Text("杀死比尔 1")
                    Text("杀死比尔 2")
                }
            }
            
            Section(header: Label("其他电影", systemImage: "film"), footer: Text("尾注")){
                Text("被解救的姜戈")
            }
        }
        .listStyle(GroupedListStyle())
    }
}

struct Section_Previews: PreviewProvider {
    static var previews: some View {
        BaseSection()
    }
}
