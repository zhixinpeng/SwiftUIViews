//
//  TextRelatedViews.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/5/18.
//

import SwiftUI

struct TextRelatedViews: View {
    @State var textFieldInput = ""
    @State var secureFieldInput = ""
    @State var textEditorInput = "TextEditor: 支持点击并编辑多行文字"
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 100) {
                // MARK: - Text
                Text("Text: 仅显示文本，不支持输入")
                
                // MARK: - Label
                Label("Label: 显示文本和图标，不支持输入", systemImage: "message")
                
                // MARK: - TextField
                TextField("TextField: 支持用户输入单行信息", text: $textFieldInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // MARK: - SecureField
                SecureField("SecureField: 支持输入，但不明码显示", text: $secureFieldInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // MARK: - Link
                Link("Link: 点击并跳转链接", destination: URL(string: "https://www.baidu.com")!)
                
                // MARK: - TextEditor
                TextEditor(text: $textEditorInput)
            }
            .padding()
        }
    }
}

struct TextRelatedViews_Previews: PreviewProvider {
    static var previews: some View {
        TextRelatedViews()
    }
}
