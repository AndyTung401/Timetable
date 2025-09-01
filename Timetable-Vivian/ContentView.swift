//
//  ContentView.swift
//  Timetable-Vivian
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

struct CellView: View {
    var title: String
    var place: String
    var teacher: String
    var category: Category
    var body: some View {
        HStack {
            Capsule()
                .foregroundStyle(category.color())
                .frame(width: 5, height: 50)
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title3)
                    .bold()
                Text(teacher)
                    .font(.callout)
                    .foregroundStyle(.gray)
                Text(place)
            }
        }
    }
}

struct ContentView: View {
    private var cellWidth: Double = 150
    
    var body: some View {
        VStack {
            ZStack {
                Text("國立台灣師範大學 114 學年度第 1 學期 上課時間表")
                    .font(.largeTitle)
                    .bold()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text(" ")
                        Text("數學系 一年級")
                    }
                    Spacer()
                    VStack(alignment: .leading) {
                        Text("學號：41440215S")
                        Text("姓名：李宥嫺")
                    }
                }
            }
            .padding()
            
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
                
                GridRow {
                    VStack {
                        Text("08:10")
                            .foregroundStyle(.gray)
                        Text("1")
                            .font(.title)
                            .bold()
                        Text("09:00")
                            .foregroundStyle(.gray)
                    }
                    Group {
                        CellView(title: "中文閱讀與思辨", place: "S301", teacher: "", category: .compulsory)
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    .frame(width: cellWidth, alignment: .leading)

                } // 第1節
                
                Divider()
                
                GridRow {
                    VStack {
                        Text("09:10")
                            .foregroundStyle(.gray)
                        Text("2")
                            .font(.title)
                            .bold()
                        Text("10:00")
                            .foregroundStyle(.gray)
                    }
                    Group {
                        CellView(title: "中文閱讀與思辨", place: "S301", teacher: "", category: .compulsory)
                        Spacer()
                        Spacer()
                        CellView(title: "微積分探索（一）", place: "S502", teacher: "", category: .compulsory)
                        CellView(title: "數學導論", place: "S503", teacher: "", category: .compulsory)
                    }
                    .frame(width: cellWidth, alignment: .leading)
                } // 第2節
                
                Divider()
                
                GridRow {
                    VStack {
                        Text("10:20")
                            .foregroundStyle(.gray)
                        Text("3")
                            .font(.title)
                            .bold()
                        Text("11:10")
                            .foregroundStyle(.gray)
                    }
                    Group {
                        CellView(title: "英文（一）", place: "S302", teacher: "", category: .compulsory)
                        CellView(title: "線性代數（一）", place: "E301", teacher: "", category: .compulsory)
                        CellView(title: "大學入門", place: "B103", teacher: "", category: .liberal)
                        CellView(title: "微積分探索（一）", place: "S502", teacher: "", category: .compulsory)
                        CellView(title: "數學導論", place: "S503", teacher: "", category: .compulsory)
                    }
                    .frame(width: cellWidth, alignment: .leading)
                } // 第3節
                
                Divider()
                
                GridRow {
                    VStack {
                        Text("11:20")
                            .foregroundStyle(.gray)
                        Text("4")
                            .font(.title)
                            .bold()
                        Text("12:10")
                            .foregroundStyle(.gray)
                    }
                    Group {
                        CellView(title: "英文（一）", place: "S302", teacher: "", category: .compulsory)
                        CellView(title: "線性代數（一）", place: "E301", teacher: "", category: .compulsory)
                        CellView(title: "大學入門", place: "B103", teacher: "", category: .liberal)
                        CellView(title: "微積分探索（一）", place: "S502", teacher: "", category: .compulsory)
                        CellView(title: "數學導論", place: "S503", teacher: "", category: .compulsory)
                    }
                    .frame(width: cellWidth, alignment: .leading)
                } // 第4節
                
                Divider()
                
                GridRow {
                    VStack(spacing: 0) {
                        Text("12:20")
                            .foregroundStyle(.gray)
                        Text("5")
                            .font(.title)
                            .bold()
                        Text("13:10")
                            .foregroundStyle(.gray)
                    }
                    Group {
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    .frame(width: cellWidth, alignment: .leading)
                } // 第5節
                
                Divider()
                
                GridRow {
                    VStack {
                        Text("13:20")
                            .foregroundStyle(.gray)
                        Text("6")
                            .font(.title)
                            .bold()
                        Text("14:10")
                            .foregroundStyle(.gray)
                    }
                    Group {
                        CellView(title: "電子計算機概論", place: "S401", teacher: "", category: .elective)
                        CellView(title: "微積分甲", place: "S502", teacher: "", category: .compulsory)
                        CellView(title: "線性代數（一）", place: "E301", teacher: "", category: .compulsory)
                        CellView(title: "基礎物理", place: "S202", teacher: "", category: .compulsory)
                        CellView(title: "基礎物理實驗", place: "D121", teacher: "", category: .compulsory)
                    }
                    .frame(width: cellWidth, alignment: .leading)
                } // 第6節
                
                Divider()
                
                GridRow {
                    VStack {
                        Text("14:20")
                            .foregroundStyle(.gray)
                        Text("7")
                            .font(.title)
                            .bold()
                        Text("15:10")
                            .foregroundStyle(.gray)
                    }
                    Group {
                        CellView(title: "電子計算機概論", place: "S401", teacher: "", category: .elective)
                        CellView(title: "微積分甲", place: "S502", teacher: "", category: .compulsory)
                        CellView(title: "線性代數（一）", place: "E301", teacher: "", category: .compulsory)
                        CellView(title: "基礎物理", place: "S202", teacher: "", category: .compulsory)
                        CellView(title: "基礎物理實驗", place: "D121", teacher: "", category: .compulsory)
                    }
                    .frame(width: cellWidth, alignment: .leading)
                } // 第7節
                
                Divider()
                
                GridRow {
                    VStack {
                        Text("15:30")
                            .foregroundStyle(.gray)
                        Text("8")
                            .font(.title)
                            .bold()
                        Text("16:20")
                            .foregroundStyle(.gray)
                    }
                    Group {
                        CellView(title: "電子計算機概論", place: "S401", teacher: "", category: .elective)
                        Spacer()
                        CellView(title: "體育（飛盤運動）", place: "操場二", teacher: "", category: .required)
                        CellView(title: "基礎物理", place: "S202", teacher: "", category: .compulsory)
                        CellView(title: "基礎物理實驗", place: "D121", teacher: "", category: .compulsory)
                    }
                    .frame(width: cellWidth, alignment: .leading)
                } // 第8節
                
                Divider()
                
                GridRow {
                    VStack {
                        Text("16:30")
                            .foregroundStyle(.gray)
                        Text("9")
                            .font(.title)
                            .bold()
                        Text("17:20")
                            .foregroundStyle(.gray)
                    }
                    Group {
                        Spacer()
                        Spacer()
                        CellView(title: "體育（飛盤運動）", place: "操場二", teacher: "", category: .required)
                        Spacer()
                        Spacer()
                    }
                    .frame(width: cellWidth, alignment: .leading)
                } // 第9節
                
                Divider()
                
                GridRow {
                    VStack {
                        Text("17:30")
                            .foregroundStyle(.gray)
                        Text("10")
                            .font(.title)
                            .bold()
                        Text("18:20")
                            .foregroundStyle(.gray)
                    }
                    Group {
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    .frame(width: cellWidth, alignment: .leading)
                } // 第10節
                
                Divider()
                
                GridRow {
                    VStack {
                        Text("18:40")
                            .foregroundStyle(.gray)
                        Text("A")
                            .font(.title)
                            .bold()
                        Text("19:30")
                            .foregroundStyle(.gray)
                    }
                    Group {
                        Spacer()
                        Spacer()
                        Spacer()
                        CellView(title: "現代公民與法律", place: "誠104", teacher: "", category: .liberal)
                        Spacer()
                    }
                    .frame(width: cellWidth, alignment: .leading)
                } // 第A節
                
                Divider()
                
                GridRow {
                    VStack {
                        Text("19:35")
                            .foregroundStyle(.gray)
                        Text("B")
                            .font(.title)
                            .bold()
                        Text("20:25")
                            .foregroundStyle(.gray)
                    }
                    Group {
                        Spacer()
                        Spacer()
                        Spacer()
                        CellView(title: "現代公民與法律", place: "誠104", teacher: "", category: .liberal)
                        Spacer()
                    }
                    .frame(width: cellWidth, alignment: .leading)
                } // 第B節
                
                Divider()
                
                GridRow {
                    VStack {
                        Text("20:30")
                            .foregroundStyle(.gray)
                        Text("C")
                            .font(.title)
                            .bold()
                        Text("21:20")
                            .foregroundStyle(.gray)
                    }
                    Group {
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    .frame(width: cellWidth, alignment: .leading)
                } // 第C節
                
                Divider()
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
                    Text("28")
                        .font(.title)
                        .bold()
                        .offset(x:0, y:2)
                    Text("學分")
                }
                .font(.title3)
            }
            .padding()
        }
        .padding()
        .frame(width: 920, height: 1150)
        .background(.white)
        .navigationTitle("大一上課表")
    }
}

#Preview("ContentView") {
    ContentView()
}

#Preview("CellView") {
    CellView(title: "微積分1", place: "新102", teacher: "蔡雅如", category: .required)
}
