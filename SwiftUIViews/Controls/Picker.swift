//
//  Picker.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/1.
//

import SwiftUI

enum Flavor: String, CaseIterable, Identifiable {
    case chocolate
    case vanilla
    case strawberry
    
    var id: String { self.rawValue }
    
    var value: String {
        switch self {
        case .chocolate:
            return "巧克力"
        case .vanilla:
            return "香草"
        case .strawberry:
            return "草莓"
        }
    }
    
    var suggestedTopping: Topping {
        switch self {
        case .chocolate:
            return .nuts
        case .vanilla:
            return .cookies
        case .strawberry:
            return .blueberries
        }
    }
}

enum Topping: String, CaseIterable, Identifiable {
    case nuts
    case cookies
    case blueberries
    
    var id: String { self.rawValue }
    
    var value: String {
        switch self {
        case .nuts:
            return "坚果"
        case .cookies:
            return "饼干碎"
        case .blueberries:
            return "蓝莓"
        }
    }
}

struct BasePicker: View {
    @State private var selectedFlavor = Flavor.chocolate
    
    var body: some View {
        VStack {
            Picker("口味", selection: $selectedFlavor) {
                Text("巧克力").tag(Flavor.chocolate)
                Text("香草").tag(Flavor.vanilla)
                Text("草莓").tag(Flavor.strawberry)
            }
            Text("您选择的是：\(selectedFlavor.value)")
        }
    }
}

struct IteratingPicker: View {
    @State private var selectedFlavor = Flavor.chocolate
    @State var suggestedTopping: Topping = Topping.cookies
    
    var body: some View {
        VStack {
            Picker("请选择一个配料：", selection: $suggestedTopping){
                ForEach(Flavor.allCases){ flavor in
                    Text(flavor.value).tag(flavor.suggestedTopping)
                }
            }
            Text("推荐配料：\(suggestedTopping.value)")
        }
    }
}

struct StylingPicker: View {
    @State private var selectedFlavor = Flavor.chocolate
    @State private var selectedToppting = Topping.nuts
    
    var body: some View {
        VStack {
            Picker("口味", selection: $selectedFlavor){
                ForEach(Flavor.allCases){ flavor in
                    Text(flavor.value).tag(flavor)
                }
            }
            Picker("配料", selection: $selectedToppting){
                ForEach(Topping.allCases){ topp in
                    Text(topp.value).tag(topp)
                }
            }
            Text("您选择的口味是：\(selectedFlavor.value)")
            Text("您选择的配料是：\(selectedToppting.value)")
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}

struct Picker_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BasePicker()
            IteratingPicker()
            StylingPicker()
        }
    }
}
