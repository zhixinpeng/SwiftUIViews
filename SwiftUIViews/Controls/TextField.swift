//
//  TextField.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/1.
//

import SwiftUI

struct BaseTextField: View {
    @State private var username: String = ""
    @State private var isEditing = false
    
    func validate(name: String) {
        print("校验用户名")
    }
    
    var body: some View {
        VStack {
            TextField("用户名", text: $username, onEditingChanged: {isEditing in
                self.isEditing = isEditing
            }, onCommit: {
                validate(name: username)
            })
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .border(Color(UIColor.separator))
            
            Text(username)
                .foregroundColor(isEditing ? .red : .blue)
        }
    }
}

struct FormatTextField: View {
    @State private var nameComonents = PersonNameComponents()
    let nameFormatter = PersonNameComponentsFormatter()
    
    func validate(components: PersonNameComponents) {
        print("校验名字")
    }
    
    var body: some View {
        VStack {
            TextField("您的名字", value: $nameComonents, formatter: nameFormatter, onCommit: {
                validate(components: nameComonents)
            })
            .disableAutocorrection(true)
            .border(Color(UIColor.separator))
            Text(nameComonents.debugDescription)
        }
    }
}

struct StylingTextField: View {
    @State private var givenName: String = ""
    @State private var familyName: String = ""
    
    var body: some View {
        VStack {
            TextField("名", text: $givenName)
                .disableAutocorrection(true)
            TextField("姓", text: $familyName)
                .disableAutocorrection(true)
        }
        .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

struct TextField_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BaseTextField()
            FormatTextField()
            StylingTextField()
        }
    }
}
