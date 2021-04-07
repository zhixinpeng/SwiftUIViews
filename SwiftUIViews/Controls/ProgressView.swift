//
//  ProgressView.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/1.
//

import SwiftUI

struct BaseProgressView: View {
    @State private var progress = 0.5
    
    var body: some View {
        VStack {
            ProgressView(value: progress)
            Button("再来", action: { progress += 0.05 })
            ProgressView()
        }
    }
}

struct StylingProgressView: View {
    struct DarkBlueShadowProgressViewStyle: ProgressViewStyle {
        func makeBody(configuration: Configuration) -> some View {
            ProgressView(configuration)
                .shadow(color: Color(red: 0, green: 0, blue: 0.6), radius: 4.0, x: 1.0, y: 2.0)
        }
    }
    
    var body: some View {
        VStack {
            ProgressView(value: 0.25)
            ProgressView(value: 0.75)
        }
        .progressViewStyle(DarkBlueShadowProgressViewStyle())
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BaseProgressView()
            StylingProgressView()
        }
    }
}
