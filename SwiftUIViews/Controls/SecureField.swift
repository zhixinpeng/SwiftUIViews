//
//  SecureField.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/1.
//

import SwiftUI

struct BaseSecureField: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    func handleLogin(username: String, password: String) {
        print("user \(username) login.")
    }
    
    var body: some View {
        VStack {
            TextField("用户名", text: $username)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .border(Color(UIColor.separator))
            SecureField("密码", text: $password){
                handleLogin(username: username, password: password)
            }
            .border(Color(UIColor.separator))
        }
    }
}

struct SecureField_Previews: PreviewProvider {
    static var previews: some View {
        BaseSecureField()
    }
}
