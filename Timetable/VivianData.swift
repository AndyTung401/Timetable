//
//  VivianData.swift
//  Timetable
//
//  Created by 董承威 on 2025/9/1.
//

import Foundation

#if false


let basicInfo: BasicInfo = BasicInfo(title: "國立台灣師範大學 115 學年度第 1 學期 上課時間表", topLeft: "", bottomLeft: "數學系 二年級", topRight: "學號：41440215S", bottomRight: "姓名：李宥嫺", credits: 30, windowTitle: "大二上課表")

let timePeriods: Array<TimePeriod> = [
    TimePeriod(index: 0, serial: "0", startTime: "07:10", endTime: "08:00"),
    TimePeriod(index: 1, serial: "1", startTime: "08:10", endTime: "09:00"),
    TimePeriod(index: 2, serial: "2", startTime: "09:10", endTime: "10:00"),
    TimePeriod(index: 3, serial: "3", startTime: "10:20", endTime: "11:10"),
    TimePeriod(index: 4, serial: "4", startTime: "11:20", endTime: "12:10"),
    TimePeriod(index: 5, serial: "5", startTime: "12:20", endTime: "13:10"),
    TimePeriod(index: 6, serial: "6", startTime: "13:20", endTime: "14:10"),
    TimePeriod(index: 7, serial: "7", startTime: "14:20", endTime: "15:10"),
    TimePeriod(index: 8, serial: "8", startTime: "15:30", endTime: "16:20"),
    TimePeriod(index: 9, serial: "9", startTime: "16:30", endTime: "17:20"),
    TimePeriod(index: 10, serial: "X", startTime: "17:30", endTime: "18:20"),
    TimePeriod(index: 11, serial: "A", startTime: "18:40", endTime: "19:30"),
    TimePeriod(index: 12, serial: "B", startTime: "19:35", endTime: "20:25"),
    TimePeriod(index: 13, serial: "C", startTime: "20:30", endTime: "21:20"),
    TimePeriod(index: 14, serial: "D", startTime: "21:25", endTime: "22:15")
]

let classData: Array<Array<ClassData?>> = [
    [ // 0
        nil,
    ],
    [ // 1
        nil,
    ],
    [ // 2
        nil,
        nil,
        nil,
        nil,
        ClassData(title: "離散數學", systemImage: "", shortTitle: "離散數學", place: "B102", teacher: "郭君逸", category: .required),
    ],
    [ // 3
        ClassData(title: "高等微積分", systemImage: "", shortTitle: "高等微積分", place: "E301", teacher: "林延輯", category: .required),
        ClassData(title: "代數學", systemImage: "", shortTitle: "代數學", place: "E301", teacher: "劉容真", category: .required),
        nil,
        ClassData(title: "代數學", systemImage: "", shortTitle: "代數學", place: "E301", teacher: "劉容真", category: .required),
        ClassData(title: "離散數學", systemImage: "", shortTitle: "離散數學", place: "B102", teacher: "郭君逸", category: .required),
        ClassData(title: "高二數A", systemImage: "", shortTitle: "高二數A", place: "內湖", teacher: "10.5 ~ 12.5", category: .other),
    ],
    [ // 4
        ClassData(title: "高等微積分", systemImage: "", shortTitle: "高等微積分", place: "E301", teacher: "林延輯", category: .required),
        ClassData(title: "代數學", systemImage: "", shortTitle: "代數學", place: "E301", teacher: "劉容真", category: .required),
        nil,
        ClassData(title: "代數學", systemImage: "", shortTitle: "代數學", place: "E301", teacher: "劉容真", category: .required),
        ClassData(title: "離散數學", systemImage: "", shortTitle: "離散數學", place: "B102", teacher: "郭君逸", category: .required),
        ClassData(title: "高二數A", systemImage: "", shortTitle: "高二數A", place: "內湖", teacher: "10.5 ~ 12.5", category: .other),
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
        ClassData(title: "西洋古典音樂", systemImage: "", shortTitle: "西洋古典音樂", place: "S102", teacher: "劉錦紋", category: .liberal),
        ClassData(title: "微分方程導論", systemImage: "", shortTitle: "微分方程導論", place: "S202", teacher: "林慧娥", category: .required),
        ClassData(title: "高等微積分", systemImage: "", shortTitle: "高等微積分", place: "E301", teacher: "林延輯", category: .required),
    ],
    [ // 7
        nil,
        ClassData(title: "西洋古典音樂", systemImage: "", shortTitle: "西洋古典音樂", place: "S102", teacher: "劉錦紋", category: .liberal),
        ClassData(title: "微分方程導論", systemImage: "", shortTitle: "微分方程導論", place: "S202", teacher: "林慧娥", category: .required),
        ClassData(title: "高等微積分", systemImage: "", shortTitle: "高等微積分", place: "E301", teacher: "林延輯", category: .required),
        nil,
        ClassData(title: "高二數B", systemImage: "", shortTitle: "高二數B", place: "內湖", teacher: "14. ~ 15.5", category: .other),
    ],
    [ // 8
        nil,
        nil,
        ClassData(title: "微分方程導論", systemImage: "", shortTitle: "微分方程導論", place: "S202", teacher: "林慧娥", category: .required),
        ClassData(title: "高等微積分", systemImage: "", shortTitle: "高等微積分", place: "E301", teacher: "林延輯", category: .required),
    ],
    [ // 9
        nil,
        nil,
        nil,
        nil,
        ClassData(title: "小二家教", systemImage: "", shortTitle: "小二家教", place: "中山國中", teacher: "16. ~ 18.", category: .other)
    ],
    [ // 10
        nil,
        ClassData(title: "高一數學", systemImage: "", shortTitle: "高一數學", place: "七張", teacher: "17.5 ~ 20.", category: .other),
    ],
    [ // A
        ClassData(title: "金融市場", systemImage: "banknote", shortTitle: "金融市場", place: "綜210展覽", teacher: "楊智元", category: .liberal),
        ClassData(title: "高一數學", systemImage: "", shortTitle: "高一數學", place: "七張", teacher: "17.5 ~ 20.", category: .other),
        ClassData(title: "國二數學", systemImage: "", shortTitle: "國二數學", place: "線上", teacher: "18.5 ~ 20.", category: .other),
        nil,
        ClassData(title: "國二數學", systemImage: "", shortTitle: "國二數學", place: "線上", teacher: "19. ~ 20.5", category: .other),
    ],
    [ // B
        ClassData(title: "金融市場", systemImage: "banknote", shortTitle: "金融市場", place: "綜210展覽", teacher: "楊智元", category: .liberal),
    ],
    [ // C
        ClassData(title: "金融市場", systemImage: "banknote", shortTitle: "金融市場", place: "綜210展覽", teacher: "楊智元", category: .liberal),
    ],
    [ // D
        nil,
    ]
]

#endif
