//
//  NavigationLink.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/1.
//

import SwiftUI

struct BaseNavigationLink: View {
    var body: some View {
        NavigationView {
            List(0..<3){ i in
                NavigationLink(destination: Text("View \(i)")){
                    Text("Item \(i)")
                }
            }
            .navigationBarTitle("Navigation")
        }
    }
}

struct NavigationLink_Previews: PreviewProvider {
    static var previews: some View {
        BaseNavigationLink()
    }
}
