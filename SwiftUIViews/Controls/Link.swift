//
//  Link.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/1.
//

import SwiftUI

struct BaseLink: View {
    var body: some View {
        VStack {
            Link("github", destination: URL(string: "https//github.com")!)
            Link("github", destination: URL(string: "https//github.com")!)
                .font(.headline)
                .foregroundColor(.black)
        }
    }
}

struct Link_Previews: PreviewProvider {
    static var previews: some View {
        BaseLink()
    }
}
