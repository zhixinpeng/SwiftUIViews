//
//  DatePicker.swift
//  SwiftUIViews
//
//  Created by 彭智鑫 on 2021/3/31.
//

import SwiftUI

struct BaseDatePicker: View {
    @State private var date = Date()
    
    var body: some View {
        VStack {
            DatePicker(
                "起始日期",
                selection: $date,
                displayedComponents: [.date]
            )
            
            DatePicker(
                "起始日期",
                selection: $date,
                displayedComponents: [.hourAndMinute, .date]
            )
        }
    }
}

struct RangeDatePicker: View {
    @State private var date = Date()
    
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2021, month: 1, day: 1)
        let endComponents = DateComponents(year: 2022, month: 1, day: 1)
        
        return calendar.date(from: startComponents)! ... calendar.date(from: endComponents)!
    }()
    
    var body: some View {
        DatePicker(
            "控制日期选择范围",
            selection: $date,
            in: dateRange,
            displayedComponents: [.date]
        )
    }
}

struct StylingDatePicker: View {
    @State private var date = Date()
    
    var body: some View {
        VStack {
            DatePicker(
                "起始时间",
                selection: $date,
                displayedComponents: [.date]
            )
            .datePickerStyle(GraphicalDatePickerStyle())
            
            DatePicker(
                "起始时间",
                selection: $date,
                displayedComponents: [.date]
            )
            .datePickerStyle(WheelDatePickerStyle())
            
            DatePicker(
                "起始时间",
                selection: $date,
                displayedComponents: [.date]
            )
            .datePickerStyle(DefaultDatePickerStyle())
        }
    }
}

struct DatePicker_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BaseDatePicker()
            RangeDatePicker()
            StylingDatePicker()
        }
    }
}
