//
//  ImageTransition.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/5/19.
//

import SwiftUI

struct ImageTransition: View {
    @State var playTransition = false
    
    var body: some View {
        Image("Dandelion")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
            .scaleEffect(playTransition ? 0 : 1)
            .onTapGesture {
                withAnimation {
                    playTransition.toggle()
                }
            }
    }
}

struct ImageTransition_Previews: PreviewProvider {
    static var previews: some View {
        ImageTransition()
    }
}
