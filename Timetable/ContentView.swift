//
//  ContentView.swift
//  Timetable
//
//  Created by 董承威 on 2025/9/1.
//

import SwiftUI

enum Category: String {
    case compulsory
    case required
    case elective
    case liberal
    
    func color() -> Color {
        switch self {
        case .compulsory:
            return .gray
        case .required:
            return .blue
        case .elective:
            return .teal
        case .liberal:
            return .yellow
        }
    }
}

struct BasicInfo {
    var title: String
    var topLeft: String
    var bottomLeft: String
    var topRight: String
    var bottomRight: String
    var credits: Int
    var windowTitle: String
}

struct ClassData: Identifiable {
    var id = UUID()
    var title, shortTitle, place, teacher: String
    var category: Category
}

struct TimePeriod: Identifiable {
    var id = UUID()
    var index: Int
    var serial, startTime, endTime: String
}

struct CellView: View {
    @Binding var largeLayout: Bool
    var classData: ClassData
    var body: some View {
        if largeLayout {
            HStack {
                Capsule()
                    .foregroundStyle(classData.category.color())
                    .frame(width: 5, height: 50)
                VStack(alignment: .leading) {
                    Text(classData.shortTitle)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    HStack (alignment: .bottom, spacing: 0) {
                        Text(classData.teacher)
                            .font(.title3)
                            .foregroundStyle(.gray)
                        Spacer(minLength: 0)
                            .frame(maxWidth: 10)
                            .layoutPriority(-1)
                        Text(classData.place)
                            .font(.title2)
                            .fontWeight(.medium)
                    }
                }
            }
            .frame(height: 50)
        } else {
            HStack {
                Capsule()
                    .foregroundStyle(classData.category.color())
                    .frame(width: 5, height: 50)
                VStack(alignment: .leading) {
                    Text(classData.title)
                        .font(.title3)
                        .bold()
                    Text(classData.teacher)
                        .font(.callout)
                        .foregroundStyle(.gray)
                    Text(classData.place)
                }
            }
            .frame(height: 50)
        }
        
    }
}

struct ContentView: View {
    var cellWidth: Double = 162
    @Binding var largeLayout: Bool
    
    var body: some View {
        VStack {
            ZStack {
                Text(basicInfo.title)
                    .font(.largeTitle)
                    .bold()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text(basicInfo.topLeft)
                        Text(basicInfo.bottomLeft)
                    }
                    Spacer()
                    VStack(alignment: .leading) {
                        Text(basicInfo.topRight)
                        Text(basicInfo.bottomRight)
                    }
                }
            }
            .padding()
            .opacity(largeLayout ? 0 : 1)
            
            Grid {
                GridRow {
                    Spacer()
                        .frame(width: 75)
                    Group {
                        Text("一")
                        Text("二")
                        Text("三")
                        Text("四")
                        Text("五")
                    }
                    .font(.title3)
                    .bold()
                    .frame(width: cellWidth, alignment: .bottom)
                } // 日期
                
                Divider()
                
                ForEach(timePeriods) { period in
                    GridRow(alignment: .center) {
                        ZStack {
                            if largeLayout {
                                HStack {
                                    Text(period.serial)
                                        .fontWidth(.compressed)
                                        .font(.system(size: 50))
                                        .bold()
                                        .foregroundStyle(.gray)
                                    VStack(alignment: .center) {
                                        Text(period.startTime)
                                        Text(period.endTime)
                                    }
                                    .font(.title)
                                    .fontWeight(.medium)
                                }
                                .frame(height: 59)
                            } else {
                                VStack {
                                    Text(period.startTime)
                                        .foregroundStyle(.gray)
                                    Text(period.serial)
                                        .font(.title)
                                        .bold()
                                    Text(period.endTime)
                                        .foregroundStyle(.gray)
                                }
                                .frame(height: 59)
                            }
                            
                            
                        }
                        
                        ForEach(Array(classDatas[period.index ].indices), id: \.self) { i in
                            if let data = classDatas[period.index][i] {
                                CellView(largeLayout: $largeLayout, classData: data)
                            } else {
                                Spacer()
                            }
                        }
                        .frame(width: cellWidth, alignment: .leading)

                    } // 第1節
                    
                    Divider()
                }
            }
            
            HStack {
                HStack {
                    Label {
                        Text("必帶")
                    } icon: {
                        Image(systemName: "circle.fill")
                            .foregroundStyle(.gray)
                    }
                    
                    Label {
                        Text("必修")
                    } icon: {
                        Image(systemName: "circle.fill")
                            .foregroundStyle(.blue)
                    }
                    
                    Label {
                        Text("通識")
                    } icon: {
                        Image(systemName: "circle.fill")
                            .foregroundStyle(.yellow)
                    }
                    
                    Label {
                        Text("選修")
                    } icon: {
                        Image(systemName: "circle.fill")
                            .foregroundStyle(.teal)
                    }
                }
                
                Spacer()
                
                HStack(alignment: .bottom){
                    Text("總計")
                    Text(String(basicInfo.credits))
                        .font(.title)
                        .bold()
                        .offset(x:0, y:2)
                    Text("學分")
                }
                .font(.title3)
            }
            .padding()
            .opacity(largeLayout ? 0 : 1)
        }
        .padding()
        .frame(width: 1000, height: 1250)
        .background(.white)
        .navigationTitle(basicInfo.windowTitle)
        .toolbar {
            Toggle("Large Layout", isOn: $largeLayout)
        }
    }
}
