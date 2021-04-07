//
//  LinearGradient.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/6.
//

import SwiftUI

struct BaseLinearGradient: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color.red, Color.blue]),
            startPoint: .top,
            endPoint: .bottom
        )
    }
}

struct LinearGradient_Previews: PreviewProvider {
    static var previews: some View {
        BaseLinearGradient()
    }
}
