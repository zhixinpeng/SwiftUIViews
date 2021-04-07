//
//  Label.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/3/31.
//

import SwiftUI

struct BaseLabel: View {
    var body: some View {
        Label("闪电", systemImage: "bolt.fill")
    }
}

struct StylingLabel: View {
    var body: some View {
        VStack {
            Label("闪电", systemImage: "bolt.fill")
                .labelStyle(TitleOnlyLabelStyle())
            Label("闪电", systemImage: "bolt.fill")
                .labelStyle(IconOnlyLabelStyle())
            Label("闪电", systemImage: "bolt.fill")
                .labelStyle(RedBorderedLabelStyle())
        }
    }
    
    struct RedBorderedLabelStyle: LabelStyle {
        func makeBody(configuration: Configuration) -> some View {
            Label(configuration)
                .border(Color.red)
        }
    }
}

struct GroupStylingLabel: View {
    var body: some View {
        VStack {
            Label("雨", systemImage: "cloud.rain")
            HStack {
                Label("雪", systemImage: "snow")
                Label("太阳", systemImage: "sun.max")
            }
        }
        .labelStyle(IconOnlyLabelStyle())
    }
}

struct ProgrammableLabel: View {
    struct Person {
        let profileColor: Color
        let firstName: String
        let lastName: String
        let title: String
        
        var fullName: String { "\(firstName) \(lastName)" }
        var initials: String { "\(firstName.first!)\(lastName.first!)" }
    }
    
    let person = Person(profileColor: .purple, firstName: "zhixin", lastName: "peng", title: "CEO")
    
    var body: some View {
        Label {
            Text(person.fullName)
                .font(.body)
                .foregroundColor(.primary)
            Text(person.title)
                .font(.subheadline)
                .foregroundColor(.secondary)
        } icon: {
            Circle()
                .fill(person.profileColor)
                .frame(width: 44, height: 44, alignment: .center)
                .overlay(Text(person.initials).foregroundColor(.white))
        }
    }
}

struct Label_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BaseLabel()
            StylingLabel()
            GroupStylingLabel()
            ProgrammableLabel()
        }
        
    }
}
