//
//  LazyHGrid.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/2.
//

import SwiftUI

struct BaseLazyHGrid: View {
    let rows: [GridItem] = [GridItem(.fixed(150)), GridItem(.flexible(minimum: 150, maximum: 200)), GridItem(.adaptive(minimum: 80, maximum: 120))]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            LazyHGrid(rows: rows){
                ForEach(0..<100){ i in
                    ColorRect(i: i)
                        .frame(width: 80)
                }
            }
        }
    }
}

struct PinnedLazyHGrid: View {
    let rows: [GridItem] = [GridItem(.fixed(200), spacing: 0), GridItem(.fixed(200), spacing: 10), GridItem(.fixed(200), spacing: 10)]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true){
            LazyHGrid(rows: rows, spacing: 40, pinnedViews: [.sectionHeaders]){
                Section(header: Text("头注")){
                    ForEach(0..<20){ i in
                        ColorRect(i: i)
                            .frame(width: 80)
                    }
                }
            }
        }
    }
}

let colors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple]

struct ColorRect: View {
    let i: Int
    var horizontal: Bool = true
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(colors[i % colors.count])
            .overlay(GeometryReader { geometry in
                ZStack {
                    VStack {
                        Text("No. \(i)")
                        if horizontal {
                            Text("h: \(Int(geometry.size.height))")
                        } else {
                            Text("w: \(Int(geometry.size.width))")
                        }
                    }
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            })
    }
}

struct LazyHGrid_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BaseLazyHGrid()
            PinnedLazyHGrid()
        }
    }
}
