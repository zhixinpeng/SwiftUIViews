//
//  DisclosureGroup.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/3/31.
//

import SwiftUI

struct BaseDisclosureGroup: View {
    @State private var topExpanded: Bool = true
    @State private var toggleStates = ToggleStates()
    
    struct ToggleStates {
        var oneIsOn: Bool = false
        var twoIsOn: Bool = true
    }
    
    var body: some View {
        DisclosureGroup("设置", isExpanded: $topExpanded){
            Toggle("选项 1", isOn: $toggleStates.oneIsOn)
            Toggle("选项 2", isOn: $toggleStates.twoIsOn)
            
            DisclosureGroup("详细设置"){
                Text("详细设置说明")
            }
        }
        .padding()
    }
}

struct DisclosureGroup_Previews: PreviewProvider {
    static var previews: some View {
        BaseDisclosureGroup()
    }
}
