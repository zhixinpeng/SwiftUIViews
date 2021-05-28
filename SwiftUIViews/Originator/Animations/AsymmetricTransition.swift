//
//  AsymmetricTransition.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/5/19.
//

import SwiftUI

struct AsymmetricTransition: View {
    @State var playTransition = true
    
    var body: some View {
        VStack {
            if playTransition {
                Image("Dandelion")
                    .resizable()
                    .transition(.asymmetric(insertion: .slide, removal: .scale))
                    .aspectRatio(contentMode: .fit)
                    .padding()
            }
            
            Button("播放动画") {
                withAnimation {
                    playTransition.toggle()
                }
            }
        }
    }
}

struct AsymmetricTransition_Previews: PreviewProvider {
    static var previews: some View {
        AsymmetricTransition()
    }
}
