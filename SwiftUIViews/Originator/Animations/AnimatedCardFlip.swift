//
//  AnimatedCardFlip.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/5/19.
//

import SwiftUI

struct AnimatedCardFlip: View {
    @State var front = false
    
    var body: some View {
        Image(systemName: "suit.club.fill")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
            .frame(width: 200, height: 100)
            .foregroundColor(front ? .white : .black)
            .background(front ? Color.black : Color.white)
            .cornerRadius(20)
            .shadow(radius: 20)
            .scaleEffect(front ? 1.2 : 0.8)
            .rotation3DEffect(
                Angle(degrees: front ? 0 : 180),
                axis: (x: 0.0, y: 1.0, z: 0.0)
            )
            .animation(.spring(response: 1.5))
            .onTapGesture {
                front.toggle()
            }
    }
}

struct AnimatedCardFlip_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedCardFlip()
    }
}
