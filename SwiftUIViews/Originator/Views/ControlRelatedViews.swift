//
//  ControlRelatedViews.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/5/18.
//

import SwiftUI
import MapKit

struct ControlRelatedViews: View {
    @State var toggleValue = true
    @State var pickerValue = 0
    @State var sliderValue = 0.0
    @State var stepperValue = 0
    @State var selectedDate = Date()
    @State var progressValue = 0.5
    @State var location = MKCoordinateRegion(center: .init(latitude: 39.9130, longitude: 116.3907), latitudinalMeters: 1000, longitudinalMeters: 1000)
    
    var pickerOptions = ["步行", "自行车", "汽车"]
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: -100, to: Date())!
        let max = Calendar.current.date(byAdding: .day, value: 100, to: Date())!
        return min...max
    }
    
    var body: some View {
        ScrollView {
            HStack {
                // MARK: - 开关
                VStack(alignment: .leading) {
                    Text("Toggle")
                        .font(.headline)
                    Toggle("自动登录", isOn: $toggleValue)
                        .toggleStyle(SwitchToggleStyle(tint: Color.blue))
                }
                .frame(height: 80)
                .padding()
                .background(Color("WhiteDarkMode"))
                .cornerRadius(15)
                .shadow(radius: 3)
                .padding(.horizontal)
                
                // MARK: - 按钮
                VStack(alignment: .leading) {
                    Text("Button")
                        .font(.headline)
                    Button(action: {}, label: {
                        Image(systemName: "person.crop.circle.fill.badge.minus")
                            .font(.system(size: 16, weight: .bold))
                        Text("退出")
                            .bold()
                    })
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(15)
                }
                .frame(height: 80)
                .padding()
                .background(Color("WhiteDarkMode"))
                .cornerRadius(15)
                .shadow(radius: 3)
                .padding(.trailing)
            }
            .padding(.bottom)
            
            // MARK: - 选择器
            VStack(alignment: .leading) {
                Text("Picker")
                    .font(.headline)
                Picker("Picker", selection: $pickerValue) {
                    ForEach(0..<pickerOptions.count, id: \.self) { index in
                        Text(pickerOptions[index]).tag(index)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            .cardStyle()
            
            // MARK: - 滑动条
            VStack(alignment: .leading) {
                Text("Slider")
                    .font(.headline)
                HStack {
                    Image(systemName: "sun.min")
                    Slider(value: $sliderValue, in: -5...5, step: 0.1)
                    Image(systemName: "sun.max.fill")
                }
            }
            .cardStyle()
            
            // MARK: - 梯度控制
            VStack(alignment: .leading) {
                Text("Stepper")
                    .font(.headline)
                Stepper("当前数值：\(stepperValue)", value: $stepperValue, in: -5...5)
            }
            .cardStyle()
            
            // MARK: - 日期选择
            VStack(alignment: .leading) {
                Text("Date Picker")
                    .font(.headline)
                DatePicker(
                    selection: $selectedDate,
                    in: dateRange,
                    displayedComponents: [.hourAndMinute, .date]
                ) {
                    Text("截止日期")
                }
            }
            .cardStyle()
            
            HStack {
                // MARK: - 长按菜单
                VStack(alignment: .leading) {
                    Text("Context")
                        .font(.headline)
                    VStack {
                        Image(systemName: "ellipsis.circle.fill")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(.blue)
                            .frame(width: 80, height: 80)
                        Text("长按菜单")
                            .bold()
                            .foregroundColor(.blue)
                    }
                    .contextMenu {
                        Button("选项 A") {}
                        Button("选项 B") {}
                    }
                }
                .frame(height: 120)
                .padding()
                .background(Color("WhiteDarkMode"))
                .cornerRadius(15)
                .shadow(radius: 3)
                .padding(.horizontal)
                
                // MARK: - 载入状态
                VStack(alignment: .leading) {
                    Text("Pro")
                        .font(.headline)
                    Spacer()
                    ProgressView(value: progressValue)
                        .progressViewStyle(CircularProgressViewStyle())
                        .padding(.leading)
                        .padding(.top)
                    Spacer()
                }
                .frame(height: 120)
                .padding()
                .background(Color("WhiteDarkMode"))
                .cornerRadius(15)
                .shadow(radius: 3)
                .padding(.trailing)
                
                // MARK: - 地图
                VStack(alignment: .leading) {
                    Text("Map")
                        .font(.headline)
                    Map(coordinateRegion: $location)
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(15)
                }
                .frame(height: 120)
                .padding()
                .background(Color("WhiteDarkMode"))
                .cornerRadius(15)
                .shadow(radius: 3)
                .padding(.trailing)
            }
            .padding(.bottom)
        }
    }
}

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color("WhiteDarkMode"))
            .cornerRadius(5)
            .shadow(radius: 3)
            .padding(.horizontal)
            .padding(.bottom)
    }
}

extension View {
    func cardStyle() -> some View {
        self.modifier(CardModifier())
    }
}

struct ControlRelatedViews_Previews: PreviewProvider {
    static var previews: some View {
        ControlRelatedViews()
    }
}
