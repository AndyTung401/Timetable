//
//  Data.swift
//  Timetable
//
//  Created by 董承威 on 2025/9/1.
//

import Foundation

#if false

let basicInfo: BasicInfo = BasicInfo(title: "國立台灣大學 114 學年度第 1 學期 上課時間表", topLeft: "", bottomLeft: "電機工程學系 一年級", topRight: "學號：B14901179", bottomRight: "姓名：董承威", credits: 22, windowTitle: "大一上課表")

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
]

let classDatas: Array<Array<ClassData?>> = [
    [ // 1
        nil,
        nil,
        ClassData(title: "健康體適能", shortTitle: "健康體適能", place: "人工草皮球場", teacher: "梁澤敬", category: .compulsory),
        nil,
        nil,
    ],
    [ // 2
        nil,
        nil,
        ClassData(title: "健康體適能", shortTitle: "健康體適能", place: "人工草皮球場", teacher: "梁澤敬", category: .compulsory),
        nil,
        nil,
    ],
    [ // 3
        ClassData(title: "生物科學通論", shortTitle: "生物科學通論", place: "明達231", teacher: "莊曜宇", category: .required),
        ClassData(title: "普通物理學甲上", shortTitle: "普物甲上", place: "博雅202", teacher: "王名儒", category: .liberal),
        nil,
        ClassData(title: "普通物理學甲上", shortTitle: "普物甲上", place: "博雅202", teacher: "王名儒", category: .liberal),
        ClassData(title: "生物科學通論", shortTitle: "生物科學通論", place: "明達231", teacher: "莊曜宇", category: .required),
    ],
    [ // 4
        ClassData(title: "生物科學通論", shortTitle: "生物科學通論", place: "明達231", teacher: "莊曜宇", category: .required),
        ClassData(title: "普通物理學甲上", shortTitle: "普物甲上", place: "博雅202", teacher: "王名儒", category: .liberal),
        nil,
        ClassData(title: "普通物理學甲上", shortTitle: "普物甲上", place: "博雅202", teacher: "王名儒", category: .liberal),
        ClassData(title: "生物科學通論", shortTitle: "生物科學通論", place: "明達231", teacher: "莊曜宇", category: .required),
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
        nil,
        ClassData(title: "微積分1&2", shortTitle: "微積分1&2", place: "新102", teacher: "蔡雅如", category: .required),
        nil,
        ClassData(title: "微積分1&2", shortTitle: "微積分1&2", place: "新102", teacher: "蔡雅如", category: .required),
    ],
    [ // 7
        nil,
        nil,
        ClassData(title: "微積分1&2", shortTitle: "微積分1&2", place: "新102", teacher: "蔡雅如", category: .required),
        ClassData(title: "交換電路與邏輯設計", shortTitle: "交電與邏輯", place: "電二229", teacher: "江介宏", category: .required),
        ClassData(title: "微積分1&2", shortTitle: "微積分1&2", place: "新102", teacher: "蔡雅如", category: .required),
    ],
    [ // 8
        nil,
        ClassData(title: "計算機程式設計實驗", shortTitle: "計程實驗", place: "學新館416", teacher: "謝宏昀", category: .required),
        ClassData(title: "計算機程式", shortTitle: "計算機程式", place: "學新館416", teacher: "謝宏昀", category: .required),
        ClassData(title: "交換電路與邏輯設計", shortTitle: "交電與邏輯", place: "電二229", teacher: "江介宏", category: .required),
        nil,
    ],
    [ // 9
        nil,
        ClassData(title: "計算機程式設計實驗", shortTitle: "計程實驗", place: "學新館416", teacher: "謝宏昀", category: .required),
        ClassData(title: "計算機程式", shortTitle: "計算機程式", place: "學新館416", teacher: "謝宏昀", category: .required),
        ClassData(title: "交換電路與邏輯設計", shortTitle: "交電與邏輯", place: "電二229", teacher: "江介宏", category: .required),
        nil,
    ],
    [ // 10
        ClassData(title: "微積分1&2", shortTitle: "微積分1&2", place: "新102", teacher: "蔡雅如", category: .required),
        nil,
        ClassData(title: "計算機程式", shortTitle: "計算機程式", place: "學新館416", teacher: "謝宏昀", category: .required),
        nil,
        nil,
    ],
    [ // A
        nil,
        nil,
        nil,
        ClassData(title: "新生講座 - 能力養成", shortTitle: "能力養成講座", place: "博雅102", teacher: "陳林祈", category: .elective),
        nil,
    ],
    [ // B
        nil,
        nil,
        nil,
        ClassData(title: "新生講座 - 能力養成", shortTitle: "能力養成講座", place: "博雅102", teacher: "陳林祈", category: .elective),
        nil,
    ],
    [ // C
        nil,
        nil,
        nil,
        ClassData(title: "新生講座 - 能力養成", shortTitle: "能力養成講座", place: "博雅102", teacher: "陳林祈", category: .elective),
        nil,
    ],
]

#endif
