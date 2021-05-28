//
//  TapGestureModifier.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/5/19.
//

import SwiftUI

struct TapGestureModifier: View {
    @State var currentGesture = "无"
    @State var currentImageName = "questionmark"
    @State var imageNames = ["hare", "tortoise", "cloud", "moon", "wind"]
    
    var body: some View {
        VStack {
            Text("识别出的手势：\(currentGesture)")
                .font(.largeTitle)
                .bold()
            
            Divider().padding()
            
            Spacer()
            
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundColor(.white)
                    .shadow(radius: 10)
                Image(systemName: currentImageName)
                    .resizable()
                    .scaleEffect(0.3)
                    .scaledToFit()
            }
            .padding()
            .onTapGesture {
                currentImageName = imageNames.randomElement()!
                currentGesture = "轻点"
            }
            
            Spacer()
        }
    }
}

struct TapGestureModifier_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureModifier()
    }
}
