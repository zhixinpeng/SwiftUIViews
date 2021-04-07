//
//  Slider.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/1.
//

import SwiftUI

struct BaseSlider: View {
    @State private var speed1 = 50.0
    @State private var speed2 = 50.0
    @State private var speed3 = 50.0
    @State private var isEditing = false
    
    var body: some View {
        VStack {
            Slider(value: $speed1, in: 0...100)
            Text("\(speed1)")
            Slider(value: $speed2, in: 0...100) { (editing) in
                isEditing = editing
            }
            Text("\(speed2)")
                .foregroundColor(isEditing ? .red : .blue)
            Slider(value: $speed3, in: 0...100, minimumValueLabel: Text("0"), maximumValueLabel: Text("100")){
                Text("Speed")
            }
        }
    }
}

struct StepSlider: View {
    @State private var speed = 50.0
    
    var body: some View {
        VStack {
            Slider(value: $speed, in: 0...100, step: 5)
            Text("\(speed)")
        }
    }
}

struct Slider_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BaseSlider()
            StepSlider()
        }
    }
}
