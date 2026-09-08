//
//  Data.swift
//  Timetable
//
//  Created by 董承威 on 2025/9/1.
//

import Foundation


#if false

let basicInfo: BasicInfo = BasicInfo(title: "國立台灣大學 115 學年度第 1 學期 上課時間表", topLeft: "", bottomLeft: "電機工程學系 二年級", topRight: "學號：B14901179", bottomRight: "姓名：董承威", credits: 21, windowTitle: "大二上課表")

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
    TimePeriod(index: 11, serial: "A", startTime: "18:25", endTime: "19:15"),
    TimePeriod(index: 12, serial: "B", startTime: "19:20", endTime: "20:10"),
    TimePeriod(index: 13, serial: "C", startTime: "20:15", endTime: "21:05"),
    TimePeriod(index: 14, serial: "D", startTime: "21:10", endTime: "22:00")
]


let classData: Array<Array<ClassData?>> = [
    [// 0
        nil,
    ],
    [ // 1
        nil,
    ],
    [ // 2
        ClassData(title: "電磁學一", systemImage: "bolt.horizontal", shortTitle: "電磁學一", place: "電二229", teacher: "鄭宇翔", category: .required),
        nil,
        nil,
        nil,
        ClassData(title: "工數—線性代數", systemImage: "graph.2d", shortTitle: "工數線代", place: "博理103", teacher: "馮世邁", category: .required),
    ],
    [ // 3
        ClassData(title: "電磁學一", systemImage: "bolt.horizontal", shortTitle: "電磁學一", place: "電二229", teacher: "鄭宇翔", category: .required),
        nil,
        ClassData(title: "工數—微分方程", systemImage: "function", shortTitle: "工數微分", place: "電二114", teacher: "黃定洧", category: .required),
        nil,
        ClassData(title: "工數—線性代數", systemImage: "graph.2d", shortTitle: "工數線代", place: "博理103", teacher: "馮世邁", category: .required),
    ],
    [ // 4
        ClassData(title: "電磁學一", systemImage: "bolt.horizontal", shortTitle: "電磁學一", place: "電二229", teacher: "鄭宇翔", category: .required),
        nil,
        ClassData(title: "工數—微分方程", systemImage: "function", shortTitle: "工數微分", place: "電二114", teacher: "黃定洧", category: .required),
        nil,
        ClassData(title: "工數—線性代數", systemImage: "graph.2d", shortTitle: "工數線代", place: "博理103", teacher: "馮世邁", category: .required),
    ],
    [ // 5
        nil,
        ClassData(title: "英語演說溝通技巧", systemImage: "person.bust", shortTitle: "英語演說", place: "博雅302", teacher: "柯凱彣", category: .elective),
    ],
    [ // 6
        ClassData(title: "羽球初級", systemImage: "tennis.racket", shortTitle: "羽球初級", place: "舊館羽球場", teacher: "黃欽永", category: .liberal),
        ClassData(title: "英語演說溝通技巧", systemImage: "person.bust", shortTitle: "英語演說", place: "博雅302", teacher: "柯凱彣", category: .elective),
    ],
    [ // 7
        ClassData(title: "羽球初級", systemImage: "tennis.racket", shortTitle: "羽球初級", place: "舊館羽球場", teacher: "黃欽永", category: .liberal),
        ClassData(title: "英語演說溝通技巧", systemImage: "person.bust", shortTitle: "英語演說", place: "博雅302", teacher: "柯凱彣", category: .elective),
        nil,
        ClassData(title: "電子學（一）", systemImage: "cpu", shortTitle: "電子學一", place: "電二143", teacher: "呂良鴻", category: .required),
        ClassData(title: "電子學（一）", systemImage: "cpu", shortTitle: "電子學一", place: "電二143", teacher: "呂良鴻", category: .required),
        ClassData(title: "高二物理", systemImage: "person.2.circle", shortTitle: "高二物理", place: "內湖嘉愷必", teacher: "14. ~ 16.", category: .other)
    ],
    [ // 8
        nil,
        ClassData(title: "英文：聽說讀寫", systemImage: "textformat.characters", shortTitle: "英文", place: "新204", teacher: "簡瑞碧", category: .required),
        nil,
        ClassData(title: "電子學（一）", systemImage: "cpu", shortTitle: "電子學一", place: "電二143", teacher: "呂良鴻", category: .required),
        ClassData(title: "電子學（一）", systemImage: "cpu", shortTitle: "電子學一", place: "電二143", teacher: "呂良鴻", category: .required),
        ClassData(title: "高二物理", systemImage: "person.2.circle", shortTitle: "高二物理", place: "內湖嘉愷必", teacher: "14. ~ 16.", category: .other)
    ],
    [ // 9
        nil,
        ClassData(title: "英文：聽說讀寫", systemImage: "textformat.characters", shortTitle: "英文", place: "新204", teacher: "簡瑞碧", category: .required),
    ],
    [ // 10
        nil,
        ClassData(title: "英文：聽說讀寫", systemImage: "textformat.characters", shortTitle: "英文", place: "新204", teacher: "簡瑞碧", category: .required),
        nil,
        ClassData(title: "高三物理", systemImage: "person.2.circle", shortTitle: "高三物理", place: "水源星巴克", teacher: "17. ~ 18.5", category: .other)
    ],
    [ // A
        ClassData(title: "金融市場", systemImage: "banknote", shortTitle: "金融市場", place: "綜210展覽", teacher: "楊智元", category: .liberal),
        ClassData(title: "電子學實驗", systemImage: "wrench.adjustable", shortTitle: "電子實驗", place: "N/A", teacher: "李泰成", category: .required)
    ],
    [ // B
        ClassData(title: "金融市場", systemImage: "banknote", shortTitle: "金融市場", place: "綜210展覽", teacher: "楊智元", category: .liberal),
        ClassData(title: "電子學實驗", systemImage: "wrench.adjustable", shortTitle: "電子實驗", place: "N/A", teacher: "李泰成", category: .required),
        ClassData(title: "國三數理", systemImage: "person.2.circle", shortTitle: "國二數理", place: "天母", teacher: "19. ~ 21.", category: .other)
    ],
    [ // C
        ClassData(title: "金融市場", systemImage: "banknote", shortTitle: "金融市場", place: "綜210展覽", teacher: "楊智元", category: .liberal),
        ClassData(title: "電子學實驗", systemImage: "wrench.adjustable", shortTitle: "電子實驗", place: "N/A", teacher: "李泰成", category: .required),
        ClassData(title: "國三數理", systemImage: "person.2.circle", shortTitle: "國二數理", place: "天母", teacher: "19. ~ 21.", category: .other),
        nil,
        ClassData(title: "國三數理", systemImage: "person.2.circle", shortTitle: "國二數理", place: "天母", teacher: "19. ~ 21.", category: .other),
    ],
    [ // D
        nil,
        nil,
        nil,
        nil,
        ClassData(title: "國三數理", systemImage: "person.2.circle", shortTitle: "國二數理", place: "天母", teacher: "19. ~ 21.", category: .other),
    ],
]

#endif
