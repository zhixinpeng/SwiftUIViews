//
//  EditButton.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/3/31.
//

import SwiftUI

struct BaseEditButton: View {
    @State private var fruits = ["苹果", "香蕉", "木瓜", "芒果"]
    
    func deleteFruit(at offset: IndexSet) {
        fruits.remove(atOffsets: offset)
    }
    
    func moveFruit(from source: IndexSet, to destination: Int) {
        fruits.move(fromOffsets: source, toOffset: destination)
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits, id: \.self){fruit in
                    Text(fruit)
                }
                .onDelete {
                    deleteFruit(at: $0)
                }
                .onMove {
                    moveFruit(from: $0, to: $1)
                }
            }
            .navigationTitle("水果")
            .toolbar{ EditButton() }
//            .navigationBarItems(leading: EditButton())
        }
    }
}

struct CustomEditButton: View {
    @State var isEditMode: EditMode = .inactive
    @State var sampleData = ["苹果", "香蕉", "木瓜", "芒果"]
    
    var body: some View {
        NavigationView {
            List(0..<sampleData.count){i in
                if isEditMode == .active {
                    TextField("水果", text: $sampleData[i])
                } else {
                    Text(sampleData[i])
                }
            }
            .navigationTitle("水果")
            .navigationBarItems(trailing: EditButton())
            .environment(\.editMode, $isEditMode)
        }
    }
}

struct EditButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BaseEditButton()
            CustomEditButton()
        }
    }
}
