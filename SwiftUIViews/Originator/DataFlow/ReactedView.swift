//
//  ReactedView.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/5/19.
//

import SwiftUI

struct ReactedView: View {
//    @ObservedObject var data: Data
    @StateObject var data = Data()
    
    var body: some View {
        SubViewOne()
            .environmentObject(data)
    }
}

struct SubViewOne: View {
    var body: some View {
        SubViewTwo()
    }
}

struct SubViewTwo: View {
    var body: some View {
        SubViewThree()
    }
}

struct SubViewThree: View {
    @EnvironmentObject var data: Data
    
    var body: some View {
        Text(data.article)
    }
}

struct ReactedView_Previews: PreviewProvider {
    static var previews: some View {
        ReactedView()
    }
}
