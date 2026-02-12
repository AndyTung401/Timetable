//
//  Data.swift
//  Timetable
//
//  Created by 董承威 on 2025/9/1.
//

import Foundation


#if true

let basicInfo: BasicInfo = BasicInfo(title: "國立台灣大學 114 學年度第 2 學期 上課時間表", topLeft: "", bottomLeft: "電機工程學系 一年級", topRight: "學號：B14901179", bottomRight: "姓名：董承威", credits: 21, windowTitle: "大一下課表")

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
    TimePeriod(index: 10, serial: "A", startTime: "18:25", endTime: "19:15"),
    TimePeriod(index: 11, serial: "B", startTime: "19:20", endTime: "20:10"),
    TimePeriod(index: 12, serial: "C", startTime: "20:15", endTime: "21:05"),
    TimePeriod(index: 13, serial: "D", startTime: "21:10", endTime: "22:00")
]

let classData: Array<Array<ClassData?>> = [
    [ // 1
        
    ],
    [ // 2
        ClassData(title: "普通心理學", systemImage: "heart", shortTitle: "心理學", place: "博雅103", teacher: "周佩雯", category: .liberal),
        nil,
        ClassData(title: "電路學", systemImage: "cpu", shortTitle: "電路學", place: "博理114", teacher: "金藝璘", category: .compulsory),
        nil,
        nil,
    ],
    [ // 3
        ClassData(title: "普通心理學", systemImage: "heart", shortTitle: "心理學", place: "博雅103", teacher: "周佩雯", category: .liberal),
        ClassData(title: "普通物理學甲下", systemImage: "cube", shortTitle: "普物", place: "博雅202", teacher: "王名儒", category: .compulsory),
        ClassData(title: "電路學", systemImage: "cpu", shortTitle: "電路學", place: "博理114", teacher: "金藝璘", category: .compulsory),
        ClassData(title: "普通物理學甲下", systemImage: "cube", shortTitle: "普物", place: "博雅202", teacher: "王名儒", category: .compulsory),
        nil,
        ClassData(title: "國二天母家教", systemImage: "person.2.circle", shortTitle: "國二數", place: "天母", teacher: "10. ~ 12.", category: .other),
    ],
    [ // 4
        ClassData(title: "普通心理學", systemImage: "heart", shortTitle: "心理學", place: "博雅103", teacher: "周佩雯", category: .liberal),
        ClassData(title: "普通物理學甲下", systemImage: "cube", shortTitle: "普物", place: "博雅202", teacher: "王名儒", category: .compulsory),
        ClassData(title: "電路學", systemImage: "cpu", shortTitle: "電路學", place: "博理114", teacher: "金藝璘", category: .compulsory),
        ClassData(title: "普通物理學甲下", systemImage: "cube", shortTitle: "普物", place: "博雅202", teacher: "王名儒", category: .compulsory),
        nil,
        ClassData(title: "國二天母家教", systemImage: "person.2.circle", shortTitle: "國二數", place: "天母", teacher: "10. ~ 12.", category: .other),
    ],
    [ // 5
        nil,
        nil,
        nil,
        nil,
        nil,
    ],
    [ // 6
        ClassData(title: "電資設計實作", systemImage: "car", shortTitle: "車車課", place: "明達402", teacher: "陳士元", category: .elective),
        nil,
        ClassData(title: "微積分", systemImage: "function", shortTitle: "微積分", place: "新102", teacher: "蔡雅如", category: .compulsory),
        nil,
        ClassData(title: "微積分", systemImage: "function", shortTitle: "微積分", place: "新102", teacher: "蔡雅如", category: .compulsory),
    ],
    [ // 7
        ClassData(title: "電資設計實作", systemImage: "car", shortTitle: "車車課", place: "明達402", teacher: "陳士元", category: .elective),
        ClassData(title: "普通物理實驗二", systemImage: "flask", shortTitle: "物實驗", place: "", teacher: "許長仁", category: .compulsory),
        ClassData(title: "微積分", systemImage: "function", shortTitle: "微積分", place: "新102", teacher: "蔡雅如", category: .compulsory),
        nil,
        ClassData(title: "微積分", systemImage: "function", shortTitle: "微積分", place: "新102", teacher: "蔡雅如", category: .compulsory),
    ],
    [ // 8
        ClassData(title: "電資設計實作", systemImage: "car", shortTitle: "車車課", place: "明達402", teacher: "陳士元", category: .elective),
        ClassData(title: "普通物理實驗二", systemImage: "flask", shortTitle: "物實驗", place: "", teacher: "許長仁", category: .compulsory),
        nil,
        nil,
        nil,
    ],
    [ // 9
        nil,
        ClassData(title: "普通物理實驗二", systemImage: "flask", shortTitle: "物實驗", place: "", teacher: "許長仁", category: .compulsory),
        ClassData(title: "經濟學", systemImage: "banknote", shortTitle: "經濟學", place: "教201演講", teacher: "周有熙", category: .liberal),
        nil,
    ],
    [ // 10
        ClassData(title: "微積分", systemImage: "function", shortTitle: "微積分", place: "新102", teacher: "蔡雅如", category: .compulsory),
        nil,
        ClassData(title: "經濟學", systemImage: "banknote", shortTitle: "經濟學", place: "教201演講", teacher: "周有熙", category: .liberal),
        nil,
        ClassData(title: "高二物理家教", systemImage: "person.2.circle", shortTitle: "高二物", place: "南京復興", teacher: "17. ~ 18.5", category: .other),
    ],
    [ // A
        nil,
        nil,
        nil,
        nil,
        nil,
    ],
    [ // B
        nil,
        ClassData(title: "國二天母家教", systemImage: "person.2.circle", shortTitle: "國二數", place: "天母", teacher: "19. ~ 21.", category: .other),
        nil,
        ClassData(title: "國二天母家教", systemImage: "person.2.circle", shortTitle: "國二數", place: "天母", teacher: "19. ~ 21.", category: .other),
        nil,
    ],
    [ // C
        nil,
        ClassData(title: "國二天母家教", systemImage: "person.2.circle", shortTitle: "國二數", place: "天母", teacher: "19. ~ 21.", category: .other),
        nil,
        ClassData(title: "國二天母家教", systemImage: "person.2.circle", shortTitle: "國二數", place: "天母", teacher: "19. ~ 21.", category: .other),
        nil,
    ],
    [],
]

#endif
