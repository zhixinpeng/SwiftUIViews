//
//  BaseButton.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/3/31.
//

import SwiftUI

struct BaseButton: View {
    var body: some View {
        VStack {
            Button(action: signIn) {
                Text("登录")
            }
            
            Button("登录", action: signIn)
        }
    }
    
    func signIn() {
        print("Click sign")
    }
}

struct ListButton: View {
    struct Item: Identifiable {
        let id = UUID()
        let title: String
    }
    
    @State var items: [Item] = [Item(title: "A"), Item(title: "B")]
    
    func addItem() {
        items.append(Item(title: "C"))
    }
    
    var body: some View {
        List {
            ForEach(items) { item in
                Text(item.title)
            }
            
            Button("添加", action: addItem)
        }
    }
}

struct ContextMenuButton: View {
    @State var username: String = ""
    @State var tmp: String = ""
    
    func cut() {
        tmp = username
        username = ""
    }
    
    func copy() {
        tmp = username
    }
    
    func paste() {
        username += tmp
    }
    
    var body: some View {
        Form {
            TextField("用户名", text: $username)
        }
        .contextMenu {
            Button("剪切", action: cut)
            Button("复制", action: copy)
            Button("粘贴", action: paste)
        }
    }
}

struct StylingButton: View {
    func signIn() {
        print("已登录")
    }
    
    func register() {
        print("注册新账号")
    }
    
    var body: some View {
        HStack {
            Button("登录", action: signIn)
            Button("注册", action: register)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct BaseButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BaseButton()
            ListButton()
            ContextMenuButton()
            StylingButton()
        }
    }
}
