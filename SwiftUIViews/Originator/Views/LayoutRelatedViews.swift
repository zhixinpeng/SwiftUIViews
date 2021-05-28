//
//  LayoutRelatedViews.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/5/18.
//

import SwiftUI

struct LayoutRelatedViews: View {
    var body: some View {
        VStack {
            // MARK: - 竖直排列
            VStack {
                VStack {
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                }
                .foregroundColor(.orange)
                .frame(width: 100, height: 200)
                .padding()
                .background(Color.white)
                .cornerRadius(25)
                .shadow(radius: 10)
                
                Text("VStack")
                    .font(.headline)
            }
            
            Divider().padding()
            
            // MARK: - 水平排列
            VStack {
                HStack {
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                }
                .foregroundColor(.blue)
                .frame(width: 200, height: 100)
                .padding()
                .background(Color.white)
                .cornerRadius(25)
                .shadow(radius: 10)
                
                Text("HStack")
                    .font(.headline)
            }
            
            // MARK: - 重叠排列
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .offset(CGPoint(x: -5, y: -3))
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .offset(CGPoint(x: 5, y: 16))
                }
                .opacity(0.7)
                .foregroundColor(.red)
                .frame(width: 200, height: 100)
                .padding()
                .padding(.bottom)
                .background(Color.white)
                .cornerRadius(25)
                .shadow(radius: 10)
                
                Text("ZStack")
                    .font(.headline)
            }
        }
    }
}

struct LayoutRelatedViews_Previews: PreviewProvider {
    static var previews: some View {
        LayoutRelatedViews()
    }
}
