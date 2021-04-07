//
//  List.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/4/1.
//

import SwiftUI

struct Movie: Identifiable, Hashable {
    let id = UUID()
    let title: String
}

let movies = [Movie(title: "低俗小说"), Movie(title: "落水狗"), Movie(title: "杀死比尔")]

struct BaseList: View {
    var body: some View {
        VStack {
            List {
                Text("低俗小说")
                Text("落水狗")
                Text("杀死比尔")
            }
            List {
                ForEach(movies){ movie in
                    Text(movie.title)
                }
            }
            List(movies){ movie in
                Text(movie.title)
            }
        }
    }
}

struct SelectionList: View {
    @State private var selection = Set<Movie>()
    
    var body: some View {
        NavigationView {
            List(movies, id: \.self, selection: $selection){ movie in
                Text(movie.title)
            }
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle(Text("Select \(selection.count) movies"))
        }
    }
}

struct HierachicalList: View {
    var body: some View {
        List(data, children: \.children){ item in
            Text("\(item.description)")
        }
    }
}

struct StylingList: View {
    var body: some View {
        List {
            Section {
                Text("低俗小说")
                Text("落水狗")
            }
            Section {
                Text("杀死比尔")
            }
        }
        .listStyle(GroupedListStyle())
    }
}

struct FileItem: Hashable, Identifiable, CustomStringConvertible {
    var id: Self { self }
    var name: String
    var children: [FileItem]? = nil
    var description: String {
        switch children {
        case nil:
            return "📚 \(name)"
        case .some(let children):
            return children.isEmpty ? "📚 \(name)" : "📚 \(name)"
        }
    }
}

let data = [FileItem(
                name: "user1234",
                children: [
                    FileItem(
                        name: "Photos",
                        children: [
                            FileItem(name: "photo001.jpg"),
                            FileItem(name: "photo002.jpg")
                        ]
                    ),
                    FileItem(
                        name: "Movies",
                        children: [
                            FileItem(name: "movie001.mp4"),
                            FileItem(name: "Documents")
                        ]
                    )
                ]),
            FileItem(
                name: "newuser",
                children: [
                    FileItem(name: "Documents")
                ]
            )
]

struct List_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BaseList()
            SelectionList()
            HierachicalList()
            StylingList()
        }
    }
}
