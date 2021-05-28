//
//  LayoutRelatedModifiers.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/5/19.
//

import SwiftUI

struct LayoutRelatedModifiers: View {
    @State var textFieldInput = ""
    @State var isHidden = false
    
    var body: some View {
        VStack {
            // MARK: - 隐藏
            if !isHidden {
                TextField("文本框", text: $textFieldInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                //  .hidden()
            }
            
            // MARK: - 转化为占位符
            HStack {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Text("大标题")
                            .font(.largeTitle)
                            .border(Color.orange)
                        Text("一些非常复杂的正文内容")
                            .font(.body)
                            .foregroundColor(.blue)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("大标题")
                            .font(.largeTitle)
                        Text("一些非常复杂的正文内容")
                            .font(.body)
                            .foregroundColor(.blue)
                    }
                    .redacted(reason: .placeholder)
                }
                
                Spacer()
                
                Toggle("Hide", isOn: $isHidden)
                    .labelsHidden()
            }
            .padding(.horizontal)
            
            // MARK: - 安全区
            Rectangle()
                .orangeCardStyle()
                .padding()
                .ignoresSafeArea(.keyboard)
            
            // MARK: - 框架和尺寸
            HStack(spacing: 0) {
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(minWidth: 100, idealWidth: 200, maxWidth: 300)
                    .frame(height: 200)
                
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 200, height: 200)
            }
            .padding()
            
            // MARK: - 边缘安全区
            Rectangle()
                .foregroundColor(.orange)
                .edgesIgnoringSafeArea([.top, .bottom])
        }
    }
}

struct OrangeCardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.orange)
            .background(Color.orange)
            .cornerRadius(15)
            .shadow(radius: 3)
    }
}

extension View {
    func orangeCardStyle() -> some View {
        self.modifier(OrangeCardModifier())
    }
}

struct LayoutRelatedModifiers_Previews: PreviewProvider {
    static var previews: some View {
        LayoutRelatedModifiers()
    }
}
