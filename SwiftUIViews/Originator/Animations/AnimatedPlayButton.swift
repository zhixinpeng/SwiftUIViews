//
//  AnimatedPlayButton.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/5/19.
//

import SwiftUI

struct AnimatedPlayButton: View {
    @State var isPlaying = false
    
    var body: some View {
        Button {
            withAnimation(.easeOut(duration: 0.4)) {
                isPlaying.toggle()
            }
        } label: {
            if isPlaying {
                Image(systemName: "pause.fill")
                    .transition(.scale.combined(with: .opacity))
            } else {
                Image(systemName: "play.fill")
                    .transition(.scale)
                    .transition(.opacity)
            }
        }
    }
}

struct AnimatedPlayButton_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedPlayButton()
    }
}
