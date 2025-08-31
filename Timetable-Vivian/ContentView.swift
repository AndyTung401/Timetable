//
//  ContentView.swift
//  Timetable
//
//  Created by 董承威 on 2025/8/31.
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
                Text(teacher)
                    .font(.callout)
                    .foregroundStyle(.gray)
                Text(place)
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
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
                .font(.title3)
                .bold()
                .frame(width: 150, alignment: .bottom)
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
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                .frame(width: 150, alignment: .leading)

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
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                .frame(width: 150, alignment: .leading)
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
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                .frame(width: 150, alignment: .leading)
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
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                .frame(width: 150, alignment: .leading)
            } // 第4節
            
            Divider()
            
            GridRow {
                VStack {
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
                    Spacer()
                }
                .frame(width: 150, alignment: .leading)
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
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                .frame(width: 150, alignment: .leading)
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
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                .frame(width: 150, alignment: .leading)
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
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                .frame(width: 150, alignment: .leading)
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
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                .frame(width: 150, alignment: .leading)
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
                    Spacer()
                }
                .frame(width: 150, alignment: .leading)
            } // 第10節
            
            Divider()
            
            GridRow {
                VStack {
                    Text("18:25")
                        .foregroundStyle(.gray)
                    Text("A")
                        .font(.title)
                        .bold()
                    Text("19:15")
                        .foregroundStyle(.gray)
                }
                Group {
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                .frame(width: 150, alignment: .leading)
            } // 第A節
            
            Divider()
            
            GridRow {
                VStack {
                    Text("19:20")
                        .foregroundStyle(.gray)
                    Text("B")
                        .font(.title)
                        .bold()
                    Text("20:10")
                        .foregroundStyle(.gray)
                }
                Group {
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                .frame(width: 150, alignment: .leading)
            } // 第B節
            
            Divider()
            
            GridRow {
                VStack {
                    Text("20:15")
                        .foregroundStyle(.gray)
                    Text("C")
                        .font(.title)
                        .bold()
                    Text("21:05")
                        .foregroundStyle(.gray)
                }
                Group {
                    Spacer()
                    Spacer()
                    Spacer()
                    CellView(title: "新生講座 - 能力養成", place: " ", teacher: "陳林祈", category: .elective)
                    Spacer()
                    HStack(alignment: .bottom){
                        Text("總計")
                        Text("22")
                            .font(.title)
                            .bold()
                            .offset(x:-1, y:3)
                        Text("學分")
                    }
                }
                .frame(width: 150, alignment: .leading)
            } // 第C節
        }
        .padding()
    }
}

#Preview("ContentView") {
    ContentView()
}

#Preview("CellView") {
    CellView(title: "微積分1", place: "新102", teacher: "蔡雅如", category: .required)
}
