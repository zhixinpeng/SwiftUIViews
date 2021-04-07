//
//  RadialGradient.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/6.
//

import SwiftUI

struct BaseRadialGradient: View {
    var body: some View {
        RadialGradient(
            gradient: Gradient(colors: [.white, .orange, .white]),
            center: .center,
            startRadius: 100,
            endRadius: 200
        )
    }
}

struct RadialGradient_Previews: PreviewProvider {
    static var previews: some View {
        BaseRadialGradient()
    }
}
