//
//  VivianData.swift
//  Timetable
//
//  Created by 董承威 on 2025/9/1.
//

import Foundation

#if true

let basicInfo: BasicInfo = BasicInfo(title: "國立台灣師範大學 114 學年度第 1 學期 上課時間表", topLeft: "", bottomLeft: "數學系 一年級", topRight: "學號：41440215S", bottomRight: "姓名：李宥嫺", credits: 28, windowTitle: "大一上課表")

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
]

let classDatas: Array<Array<ClassData?>> = [
    [ // 1
        ClassData(title: "中文閱讀與思辨", shortTitle: "中文閱讀思辨", place: "S301", teacher: "林津羽", category: .compulsory),
        nil,
        nil,
        nil,
        nil,
    ],
    [ // 2
        ClassData(title: "中文閱讀與思辨", shortTitle: "中文閱讀思辨", place: "S301", teacher: "林津羽", category: .compulsory),
        nil,
        nil,
        ClassData(title: "微積分探索（一）", shortTitle: "微積分探索一", place: "S502", teacher: "林惠娥", category: .compulsory),
        ClassData(title: "數學導論", shortTitle: "數學導論", place: "S503", teacher: "劉容真", category: .compulsory),
    ],
    [ // 3
        ClassData(title: "英文（一）", shortTitle: "英文（一）", place: "S302", teacher: "翁悅心", category: .compulsory),
        ClassData(title: "線性代數（一）", shortTitle: "線性代數(一)", place: "E301", teacher: "謝世峰", category: .compulsory),
        ClassData(title: "大學入門", shortTitle: "大學入門", place: "B103", teacher: "黃聰明 楊青育", category: .liberal),
        ClassData(title: "微積分甲（一）", shortTitle: "微積分甲(一)", place: "S502", teacher: "林惠娥", category: .compulsory),
        ClassData(title: "數學導論", shortTitle: "數學導論", place: "S503", teacher: "劉容真", category: .compulsory),
    ],
    [ // 4
        ClassData(title: "英文（一）", shortTitle: "英文（一）", place: "S302", teacher: "翁悅心", category: .compulsory),
        ClassData(title: "線性代數（一）", shortTitle: "線性代數(一)", place: "E301", teacher: "謝世峰", category: .compulsory),
        ClassData(title: "大學入門", shortTitle: "大學入門", place: "B103", teacher: "黃聰明 楊青育", category: .liberal),
        ClassData(title: "微積分甲（一）", shortTitle: "微積分甲(一)", place: "S502", teacher: "林惠娥", category: .compulsory),
        ClassData(title: "數學導論", shortTitle: "數學導論", place: "S503", teacher: "劉容真", category: .compulsory),
    ],
    [ // 5
        nil,
        nil,
        nil,
        nil,
        nil,
    ],
    [ // 6
        ClassData(title: "電子計算機概論", shortTitle: "計算機概論", place: "S401", teacher: "楊青育", category: .elective),
        ClassData(title: "微積分甲（一）", shortTitle: "微積分甲", place: "S502", teacher: "林惠娥", category: .compulsory),
        ClassData(title: "線性代數（一）", shortTitle: "線性代數(一)", place: "E301", teacher: "謝世峰", category: .compulsory),
        ClassData(title: "基礎物理", shortTitle: "基礎物理", place: "S202", teacher: "邱顯智", category: .compulsory),
        ClassData(title: "基礎物理實驗", shortTitle: "基礎物理實驗", place: "D121", teacher: "陸亭樺", category: .compulsory),
    ],
    [ // 7
        ClassData(title: "電子計算機概論", shortTitle: "計算機概論", place: "S401", teacher: "楊青育", category: .elective),
        ClassData(title: "微積分甲（一）", shortTitle: "微積分甲", place: "S502", teacher: "林惠娥", category: .compulsory),
        ClassData(title: "線性代數探索（一）", shortTitle: "線代探索(一)", place: "E301", teacher: "謝世峰", category: .compulsory),
        ClassData(title: "基礎物理", shortTitle: "基礎物理", place: "S202", teacher: "邱顯智", category: .compulsory),
        ClassData(title: "基礎物理實驗", shortTitle: "基礎物理實驗", place: "D121", teacher: "陸亭樺", category: .compulsory),
    ],
    [ // 8
        ClassData(title: "電子計算機概論", shortTitle: "計算機概論", place: "S401", teacher: "楊青育", category: .elective),
        nil,
        ClassData(title: "體育（飛盤運動）", shortTitle: "體育（飛盤）", place: "公館操場二", teacher: "黃正杰", category: .required),
        ClassData(title: "基礎物理", shortTitle: "基礎物理", place: "S202", teacher: "邱顯智", category: .compulsory),
        ClassData(title: "基礎物理實驗", shortTitle: "基礎物理實驗", place: "D121", teacher: "陸亭樺", category: .compulsory),
    ],
    [ // 9
        nil,
        nil,
        ClassData(title: "體育（飛盤運動）", shortTitle: "體育（飛盤）", place: "公館操場二", teacher: "黃正杰", category: .required),
        nil,
        nil,
    ],
    [ // 10
        nil,
        nil,
        nil,
        nil,
        nil,
    ],
    [ // A
        nil,
        nil,
        nil,
        ClassData(title: "現代公民與法律", shortTitle: "現代公民法律", place: "誠104", teacher: "陳彥？", category: .liberal),
        nil,
    ],
    [ // B
        nil,
        nil,
        nil,
        ClassData(title: "現代公民與法律", shortTitle: "現代公民法律", place: "誠104", teacher: "陳彥？", category: .liberal),
        nil,
    ],
    [ // C
        nil,
        nil,
        nil,
        nil,
        nil,
    ],
]

#endif
