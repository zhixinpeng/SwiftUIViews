//
//  Menu.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/6.
//

import SwiftUI

struct BaseMenu: View {
    func rename() {}
    func delete() {}
    func copy() {}
    func copyFormatted() {}
    func copyPath() {}
    
    func openInPreview() {}
    func saveAsPDF() {}
    
    var body: some View {
        VStack {
            Menu("目录"){
                Button("重命名", action: rename)
                Button("删除", action: delete)
                
                Menu("复制"){
                    Button("复制", action: copy)
                    Button("格式复制", action: copyFormatted)
                    Button("复制路径", action: copyPath)
                }
                
                Label("标签", systemImage: "pencil.slash")
            }
            
            Menu {
                Button("在预览中打开", action: openInPreview)
                Button("保存为 PDF", action: saveAsPDF)
            } label: {
                Label("PDF", systemImage: "doc.fill")
            }
        }
    }
}

struct StylingMenu: View {
    func setInPath() {}
    func setOutPath() {}
    
    var body: some View {
        Menu("编辑"){
            Button("出发地", action: setInPath)
            Button("目的地", action: setOutPath)
        }
        .menuStyle(BorderlessButtonMenuStyle())
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BaseMenu()
            StylingMenu()
        }
    }
}
