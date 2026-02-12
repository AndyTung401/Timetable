//
//  VivianData.swift
//  Timetable
//
//  Created by 董承威 on 2025/9/1.
//

import Foundation

#if false

let basicInfo: BasicInfo = BasicInfo(title: "國立台灣師範大學 114 學年度第 2 學期 上課時間表", topLeft: "", bottomLeft: "數學系 一年級", topRight: "學號：41440215S", bottomRight: "姓名：李宥嫺", credits: 26, windowTitle: "大一下課表")

let timePeriods: Array<TimePeriod> = [
    TimePeriod(index: 0, serial: "1", startTime: "08:10", endTime: "09:00"),
    TimePeriod(index: 1, serial: "2", startTime: "09:10", endTime: "10:00"),
    TimePeriod(index: 2, serial: "3", startTime: "10:20", endTime: "11:10"),
    TimePeriod(index: 3, serial: "4", startTime: "11:20", endTime: "12:10"),
    TimePeriod(index: 4, serial: "5", startTime: "12:20", endTime: "13:10"),
    TimePeriod(index: 5, serial: "6", startTime: "13:20", endTime: "14:10"),
    TimePeriod(index: 6, serial: "7", startTime: "14:20", endTime: "15:10"),
    TimePeriod(index: 7, serial: "8", startTime: "15:30", endTime: "16:20"),
    TimePeriod(index: 8, serial: "9", startTime: "16:30", endTime: "17:20"),
    TimePeriod(index: 9, serial: "X", startTime: "17:30", endTime: "18:20"),
    TimePeriod(index: 10, serial: "A", startTime: "18:40", endTime: "19:30"),
    TimePeriod(index: 11, serial: "B", startTime: "19:35", endTime: "20:25"),
    TimePeriod(index: 12, serial: "C", startTime: "20:30", endTime: "21:20"),
    TimePeriod(index: 13, serial: "D", startTime: "21:25", endTime: "22:15")
]

let classData: Array<Array<ClassData?>> = [
    [ // 1
        ClassData(title: "中文寫作與表達", systemImage: "", shortTitle: "國文", place: "S301", teacher: "林津羽", category: .compulsory),
        nil,
        nil,
        nil,
        ClassData(title: "體育（羽球初級）", systemImage: "", shortTitle: "體育（羽球）", place: "中正堂", teacher: "鄭筱澐", category: .compulsory),
    ],
    [ // 2
        ClassData(title: "中文寫作與表達", systemImage: "", shortTitle: "國文", place: "S301", teacher: "林津羽", category: .compulsory),
        nil,
        nil,
        ClassData(title: "微積分探索（二）", systemImage: "", shortTitle: "微積分探索", place: "S502", teacher: "林惠娥", category: .compulsory),
        ClassData(title: "體育（羽球初級）", systemImage: "", shortTitle: "體育（羽球）", place: "中正堂", teacher: "鄭筱澐", category: .compulsory),
        ClassData(title: "國三七張家教", systemImage: "", shortTitle: "國三數學", place: "七張", teacher: "9. ~ 12.", category: .other),
    ],
    [ // 3
        ClassData(title: "英文", systemImage: "", shortTitle: "英文", place: "S302", teacher: "翁悅心", category: .compulsory),
        ClassData(title: "線性代數（二）", systemImage: "", shortTitle: "線性代數", place: "E301", teacher: "謝世峰", category: .compulsory),
        nil,
        ClassData(title: "微積分甲（二）", systemImage: "", shortTitle: "微積分", place: "S502", teacher: "林惠娥", category: .compulsory),
        ClassData(title: "管理學入門", systemImage: "", shortTitle: "管理學", place: "S602", teacher: "詩友元", category: .liberal),
        ClassData(title: "國三七張家教", systemImage: "", shortTitle: "國三數學", place: "七張", teacher: "9. ~ 12.", category: .other),
    ],
    [ // 4
        ClassData(title: "英文", systemImage: "", shortTitle: "英文", place: "S302", teacher: "翁悅心", category: .compulsory),
        ClassData(title: "線性代數（二）", systemImage: "", shortTitle: "線性代數", place: "E301", teacher: "謝世峰", category: .compulsory),
        nil,
        ClassData(title: "微積分甲（二）", systemImage: "", shortTitle: "微積分", place: "S502", teacher: "林惠娥", category: .compulsory),
        ClassData(title: "管理學入門", systemImage: "", shortTitle: "管理學", place: "S602", teacher: "詩友元", category: .liberal),
        ClassData(title: "國三七張家教", systemImage: "", shortTitle: "國三數學", place: "七張", teacher: "9. ~ 12.", category: .other),
    ],
    [ // 5
        nil,
        nil,
        nil,
        nil,
        nil,
    ],
    [ // 6
        nil,
        ClassData(title: "微積分甲（二）", systemImage: "", shortTitle: "微積分", place: "S502", teacher: "林惠娥", category: .compulsory),
        ClassData(title: "線性代數（二）", systemImage: "", shortTitle: "線性代數", place: "E301", teacher: "謝世峰", category: .compulsory),
        ClassData(title: "程式設計", systemImage: "", shortTitle: "程式設計", place: "理圖807", teacher: "楊清玉", category: .compulsory),
        ClassData(title: "數論", systemImage: "", shortTitle: "數論", place: "E102", teacher: "胡舉卿", category: .compulsory)
    ],
    [ // 7
        nil,
        ClassData(title: "微積分甲（二）", systemImage: "", shortTitle: "微積分", place: "S502", teacher: "林惠娥", category: .compulsory),
        ClassData(title: "線性代數探索（二）", systemImage: "", shortTitle: "線性代數", place: "E301", teacher: "謝世峰", category: .compulsory),
        ClassData(title: "程式設計", systemImage: "", shortTitle: "程式設計", place: "理圖807", teacher: "楊清玉", category: .compulsory),
        ClassData(title: "數論", systemImage: "", shortTitle: "數論", place: "E102", teacher: "胡舉卿", category: .compulsory)
    ],
    [ // 8
        nil,
        nil,
        nil,
        ClassData(title: "程式設計", systemImage: "", shortTitle: "程式設計", place: "理圖807", teacher: "楊清玉", category: .compulsory),
        ClassData(title: "數論", systemImage: "", shortTitle: "數論", place: "E102", teacher: "胡舉卿", category: .compulsory)
    ],
    [ // 9
        nil,
        nil,
        ClassData(title: "經濟學", systemImage: "", shortTitle: "經濟學", place: "教201演講", teacher: "周有熙", category: .liberal),
        nil,
        nil,
    ],
    [ // 10
        nil,
        nil,
        ClassData(title: "經濟學", systemImage: "", shortTitle: "經濟學", place: "教201演講", teacher: "周有熙", category: .liberal),
        ClassData(title: "國三七張家教", systemImage: "", shortTitle: "國三數學", place: "七張", teacher: "💩 ~ 💩", category: .other),
        nil,
    ],
    [ // A
        ClassData(title: "國一線上家教", systemImage: "", shortTitle: "國一數學", place: "線上", teacher: "18.5 ~ 20.", category: .other),
        ClassData(title: "小一全科家教", systemImage: "", shortTitle: "小一全科", place: "松山", teacher: "18. ~ 20.", category: .other),
        ClassData(title: "國一線上家教", systemImage: "", shortTitle: "國一數學", place: "線上", teacher: "18.5 ~ 20.", category: .other),
        nil,
        ClassData(title: "小一全科家教", systemImage: "", shortTitle: "小一全科", place: "松山", teacher: "18. ~ 20.", category: .other),
        ClassData(title: "高一數學家教", systemImage: "", shortTitle: "高一數學", place: "內湖", teacher: "日 10. ~ 12.", category: .other)
    ],
    [ // B
        ClassData(title: "科學思維", systemImage: "", shortTitle: "科學思維", place: "誠203", teacher: "鍾兆晉", category: .liberal),
        ClassData(title: "小一全科家教", systemImage: "", shortTitle: "小一全科", place: "松山", teacher: "18. ~ 20.", category: .other),
        nil,
        nil,
        ClassData(title: "小一全科家教", systemImage: "", shortTitle: "小一全科", place: "松山", teacher: "18. ~ 20.", category: .other),
        ClassData(title: "高一數學家教", systemImage: "", shortTitle: "高一數學", place: "內湖", teacher: "日 10. ~ 12.", category: .other)
    ],
    [ // C
        ClassData(title: "科學思維", systemImage: "", shortTitle: "科學思維", place: "誠203", teacher: "鍾兆晉", category: .liberal),
        nil,
        nil,
        nil,
        nil,
        ClassData(title: "高一數學家教", systemImage: "", shortTitle: "高一數學", place: "內湖", teacher: "日 10. ~ 12.", category: .other)
    ],
    []
]

#endif
