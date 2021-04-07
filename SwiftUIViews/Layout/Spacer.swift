//
//  Spacer.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/2.
//

import SwiftUI

struct BaseSpacer: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("右").font(.largeTitle)
            }
            HStack {
                Text("左").font(.largeTitle)
                Spacer()
            }
            HStack {
                Text("左").font(.largeTitle)
                Spacer()
                Text("右").font(.largeTitle)
            }
            HStack {
                Spacer()
                Text("左").font(.largeTitle)
                Spacer()
                Text("右").font(.largeTitle)
            }
            HStack {
                Text("左").font(.largeTitle)
                Spacer().layoutPriority(2)
                Text("右").font(.largeTitle)
            }
        }
    }
}

struct Spacer_Previews: PreviewProvider {
    static var previews: some View {
        BaseSpacer()
    }
}
