//
//  TableView.swift
//  Timetable
//
//  Created by 董承威 on 2025/9/1.
//

import SwiftUI



struct CellView: View {
    @Binding var largeLayout: Bool
    var showIcon: Bool
    var classData: ClassData
    var body: some View {
        if largeLayout {
            HStack {
                Capsule()
                    .foregroundStyle(classData.category.color)
                    .frame(width: 5, height: 50)
                VStack(alignment: .leading) {
                    if !showIcon || classData.systemImage.isEmpty {
                        Text(classData.shortTitle)
                            .labelIconToTitleSpacing(!showIcon || classData.systemImage.isEmpty ? 0 : 5)
                            .font(.system(size: 26))//.font(.largeTitle)
                            #if os(macOS)
                            .fontWeight(.semibold)
                            #else
                            .fontWeight(.bold)
                            #endif
                    } else {
                        Label(classData.shortTitle, systemImage: (showIcon ? classData.systemImage : ""))
                            .labelIconToTitleSpacing(!showIcon || classData.systemImage.isEmpty ? 0 : 5)
                            .font(.system(size: 26))//.font(.largeTitle)
                            #if os(macOS)
                            .fontWeight(.semibold)
                            #else
                            .fontWeight(.bold)
                            #endif
                    }
                    
                    HStack (alignment: .lastTextBaseline, spacing: 0) {
                        Text(classData.teacher)
                            .font(.system(size: 15))//.font(.title3)
                            .foregroundStyle(.gray)
                        Spacer(minLength: 0)
                            .frame(maxWidth: 10)
                            .layoutPriority(-1)
                        Text(classData.place)
                            .font(.system(size: 17))//.font(.title2)
                        
                            .fontWeight(.medium)
                    }
                }
                .font(.system(size: 13))//.font(.body)
            }
            .frame(height: 50)
        } else {
            HStack {
                Capsule()
                    .foregroundStyle(classData.category.color)
                    .frame(width: 5, height: 50)
                VStack(alignment: .leading) {
                    if !showIcon || classData.systemImage.isEmpty {
                        Text(classData.title)
                            .font(.system(size: 15))//.font(.title3)
                            .fontWeight(.bold)
                    } else {
                        Label(classData.title, systemImage: (showIcon ? classData.systemImage : ""))
                            .labelIconToTitleSpacing(3)
                            .font(.system(size: 15))//.font(.title3)
                            .fontWeight(.bold)
                    }
                        
                    Text(classData.teacher)
                        .font(.system(size: 12))//.font(.callout)
                        .foregroundStyle(.gray)
                    Text(classData.place)
                }
            }
            .font(.system(size: 13))//.font(.body)
            .frame(height: 50)
        }
        
    }
}

struct TableView: View {
    var cellWidth: Double = 150
    @Binding var largeLayout: Bool
    var showIcon: Bool
    
    var body: some View {
        VStack {
            if(!largeLayout){
                ZStack {
                    Text(basicInfo.title)
                        .font(.system(size: 26))//.font(.largeTitle)
                        .fontWeight(.bold)
                    
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
                    .font(.system(size: 13))//.font(.body)
                }
                .padding()
            }
            
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
                        Text("六")
                    }
                    .font(.system(size: 15))//.font(.title3)
                    .fontWeight(.bold)
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
                                        .fontWeight(.bold)
                                        .foregroundStyle(.gray)
                                    VStack(alignment: .center) {
                                        Text(period.startTime)
                                        Text(period.endTime)
                                    }
                                    .font(.system(size: 22))//.font(.title)
                                    .fontWeight(.medium)
                                }
                                .font(.system(size: 13))//.font(.body)
                                .frame(height: 59)
                            } else {
                                VStack {
                                    Text(period.startTime)
                                        .foregroundStyle(.gray)
                                    Text(period.serial)
                                        .font(.system(size: 22))//.font(.title)
                                        .fontWeight(.bold)
                                    Text(period.endTime)
                                        .foregroundStyle(.gray)
                                }
                                .font(.system(size: 13))//.font(.body)
                                .frame(height: 59)
                            }
                            
                            
                        }
                        
                        ForEach(Array(classData[period.index].indices), id: \.self) { i in
                            if let data = classData[period.index][i] {
                                CellView(largeLayout: $largeLayout, showIcon: showIcon, classData: data)
                            } else {
                                Spacer()
                            }
                        }
                        .frame(width: cellWidth, alignment: .leading)

                    } // 第1節
                    
                    Divider()
                }
            }
            
            if(!largeLayout){
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
                    
                    HStack(alignment: .lastTextBaseline){
                        Text("總計")
                        Text(String(basicInfo.credits))
                            .font(.system(size: 22))//.font(.title)
                            .fontWeight(.bold)
                        Text("學分")
                    }
                    .font(.system(size: 15))//.font(.title3)
                }
                .font(.system(size: 13))//.font(.body)
                .padding()
            }
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
