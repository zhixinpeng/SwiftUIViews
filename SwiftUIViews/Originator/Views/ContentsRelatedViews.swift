//
//  ContentsRelatedViews.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/5/18.
//

import SwiftUI

struct ContentsRelatedViews: View {
    var columns = [GridItem(.adaptive(minimum: 200, maximum: 350), spacing: 15)]
    var array: [Row] = [
        Row(label: "项目总用时", image: "clock", value: "50", unit: "分钟"),
        Row(label: "当前进行的项目", image: "circles.hexagonpath.fill", value: "3", unit: "个"),
        Row(label: "获得成就勋章", image: "star.fill", value: "5", unit: "枚"),
    ]
    var targetDurations = ["15 分钟", "30 分钟", "1 小时", "2 小时","3 小时"]
    
    @State private var showReminderOnMainScreen = false
    @State private var sendOutNoticification = false
    @State private var selectedDuration = 0
    
    var body: some View {
        TabView {
            // MARK: - 列表
            List {
                CardView()
                CardView()
                CardView()
                CardView()
                CardView()
            }
            .tabItem {
                Image(systemName: "doc.append")
                Text("项目")
            }
            
            // MARK: - 网格
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 8) {
                        ForEach(array) { row in
                            GroupBox(label: Label(row.label, systemImage: row.image)) {
                                ValueView(value: row.value, unit: row.unit)
                            }
                            .groupBoxStyle(GrayGroupBoxStyle(color: .orange, destination: EmptyView()))
                        }
                    }
                    .padding(.top)
                    .padding(.horizontal)
                }
                .background(Color(.systemGroupedBackground))
                .navigationTitle("项目记录")
            }
            .tabItem {
                Image(systemName: "textformat.123")
                Text("统计")
            }
            
            // MARK: - 表单
            NavigationView {
                Form {
                    Section(header: Text("每日目标")) {
                        Toggle(isOn: $showReminderOnMainScreen) {
                            Text("显示目标")
                        }
                        
                        Toggle(isOn: $sendOutNoticification) {
                            Text("推送提醒")
                        }
                        
                        Picker(selection: $selectedDuration, label: Text("目标市场")) {
                            ForEach(0..<targetDurations.count) {
                                Text(targetDurations[$0])
                            }
                        }
                    }
                    
                    Section(header: Text("帮助与反馈")) {
                        Button("帮助指南") {}
                        Button("提交反馈") {}
                    }
                }
                .navigationTitle("设置")
            }
            .tabItem {
                Image(systemName: "gearshape")
                Text("设置")
            }
        }
    }
}

struct CardView: View {
    var body: some View {
        HStack {
            Image("icon")
                .resizable()
                .frame(width: 150, height: 150)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
                .shadow(radius: 10)
            
            VStack(alignment: .leading) {
                Text("创作者的 IOS 独立开发指南")
                    .font(.title2)
                    .bold()
                    .padding(.bottom, 5)
                Spacer()
                Text("已进行：")
                    .font(.body)
                    .foregroundColor(.gray)
                Text("7 小时 20 分钟")
                    .font(.body)
                    .foregroundColor(.gray)
            }
            .padding(.leading)
        }
        .frame(height: 140)
        .padding()
        .background(Color("WhiteDarkMode"))
        .cornerRadius(15)
        .shadow(radius: 3)
        .padding(.vertical, 5)
    }
}

struct Row: Identifiable, Hashable {
    var id = UUID()
    var label: String
    var image: String
    var value: String
    var unit: String
}

struct ValueView: View {
    var value: String
    var unit: String
    var size: CGFloat = 1
    
    var body: some View {
        HStack {
            Text(value)
                .font(.system(size: 24 * size, weight: .bold, design: .rounded))
            +
            Text(" \(unit)")
                .font(.system(size: 14 * size, weight: .semibold, design: .rounded))
                .foregroundColor(.secondary)
            Spacer()
        }
    }
}

struct GrayGroupBoxStyle<V: View>: GroupBoxStyle {
    var color: Color
    var destination: V
    var date: Date?
    var size: CGFloat = 1
    
    func makeBody(configuration: Configuration) -> some View {
        NavigationLink(destination: destination) {
            GroupBox(
                label: HStack {
                    configuration.label.foregroundColor(color)
                    Spacer()
                    if date != nil {
                        Text("\(date!)")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                            .padding(.trailing, 4)
                    }
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(.systemGray4))
                        .imageScale(.small)
                }) {
                configuration.content.padding(.top)
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct ContentsRelatedViews_Previews: PreviewProvider {
    static var previews: some View {
        ContentsRelatedViews()
    }
}
