//
//  Form.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/3/31.
//

import SwiftUI

struct BaseForm: View {
    @State var username = ""
    @State var password = ""
    
    func register() {
        print("注册新账号")
    }
    
    var body: some View {
        Form {
            Section {
                Text("登录")
                TextField("用户名", text: $username)
                SecureField("密码", text: $password)
            }
            
            Section {
                Text("注册")
                    .onTapGesture(perform: register)
            }
        }
    }
}

struct Form_Previews: PreviewProvider {
    static var previews: some View {
        BaseForm()
    }
}
