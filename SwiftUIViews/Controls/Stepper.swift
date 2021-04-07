//
//  Stepper.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/1.
//

import SwiftUI

struct BaseStepper: View {
    @State private var value = 3
    @State private var value2 = 0
    
    let colors: [Color] = [.orange, .red, .green, .blue, .green, .purple, .pink]
    
    func incrementStep() {
        value = (value + 1) % colors.count
    }
    
    func decrementStep() {
        value = (value + colors.count - 1) % colors.count
    }
    
    var body: some View {
        VStack {
            Stepper(onIncrement: incrementStep,onDecrement: decrementStep){
                Text("值：\(value) 颜色：\(colors[value].description)")
            }
            .padding(5)
            .background(colors[value])
            
            Stepper(onIncrement: incrementStep,onDecrement: nil){
                Text("值：\(value) 颜色：\(colors[value].description)")
            }
            .padding(5)
            
            Stepper(value: $value2, in: 1...50, step: 5){
                Text("值2：\(value2)")
            }
            .padding(10)
        }
    }
}

struct Stepper_Previews: PreviewProvider {
    static var previews: some View {
        BaseStepper()
    }
}
