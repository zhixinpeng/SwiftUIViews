//
//  TextEditor.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/1.
//

import SwiftUI

struct BaseTextEditor: View {
    @State private var fullText: String = "治理有些可编辑的文字...\n第二行也有一些..."
    
    var body: some View {
        VStack {
            Spacer()
            TextEditor(text: $fullText)
            TextEditor(text: $fullText)
                .foregroundColor(.gray)
                .font(.custom("HelveticaNeue", size: 13))
            TextEditor(text: $fullText)
                .foregroundColor(.gray)
                .font(.custom("HelveticaNeue", size: 13))
                .lineSpacing(10)
        }
    }
}

struct TextEditor_Previews: PreviewProvider {
    static var previews: some View {
        BaseTextEditor()
    }
}
