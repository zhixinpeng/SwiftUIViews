//
//  Toggle.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/1.
//

import SwiftUI

struct BaseToggle: View {
    @State private var vibrateOnRing = false
    
    var body: some View {
        Toggle(isOn: $vibrateOnRing){
            Text("来电震动")
        }
    }
}

struct StylingToggle: View {
    @State private var vibrateOnRing = false
    @State private var silentOnRing = true
    
    var body: some View {
        VStack {
            Toggle("拉点震动", isOn: $vibrateOnRing)
            Toggle("静音", isOn: $silentOnRing)
        }
        .toggleStyle(SwitchToggleStyle())
    }
}

struct Toggle_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BaseToggle()
            StylingToggle()
        }
    }
}
