//
//  VivianData.swift
//  Timetable
//
//  Created by 董承威 on 2025/9/1.
//

import Foundation

#if false

let basicInfo: BasicInfo = BasicInfo(title: "0", topLeft: "", bottomLeft: "", topRight: "", bottomRight: "", credits: 0, windowTitle: "")

let timePeriods: Array<TimePeriod> = [
    TimePeriod(index: 0, serial: "1", startTime: "08:00", endTime: "08:50"),
    TimePeriod(index: 1, serial: "2", startTime: "09:00", endTime: "09:50"),
    TimePeriod(index: 2, serial: "3", startTime: "10:10", endTime: "11:00"),
    TimePeriod(index: 3, serial: "4", startTime: "11:10", endTime: "12:00"),
    TimePeriod(index: 4, serial: "5", startTime: "12:10", endTime: "13:00"),
    TimePeriod(index: 5, serial: "6", startTime: "13:20", endTime: "14:10"),
    TimePeriod(index: 6, serial: "7", startTime: "14:20", endTime: "15:10"),
    TimePeriod(index: 7, serial: "8", startTime: "15:30", endTime: "16:20"),
    TimePeriod(index: 8, serial: "9", startTime: "16:30", endTime: "17:20"),
    TimePeriod(index: 9, serial: "X", startTime: "17:30", endTime: "18:20"),
    TimePeriod(index: 10, serial: "A", startTime: "18:30", endTime: "19:20"),
    TimePeriod(index: 11, serial: "B", startTime: "19:30", endTime: "20:20"),
    TimePeriod(index: 12, serial: "C", startTime: "20:30", endTime: "21:20"),
    TimePeriod(index: 13, serial: "D", startTime: "21:30", endTime: "22:20")
]

let classData: Array<Array<ClassData?>> = [
    [ // 1
        nil,
        ClassData(title: "微積分一", systemImage: "", shortTitle: "微積分一", place: "綜三201", teacher: "江金城", category: .required),
        nil,
        nil,
        ClassData(title: "微積分一", systemImage: "", shortTitle: "微積分一", place: "綜三201", teacher: "江金城", category: .required),
    ],
    [ // 2
        nil,
        ClassData(title: "微積分一", systemImage: "", shortTitle: "微積分一", place: "綜三201", teacher: "江金城", category: .required),
        nil,
        nil,
        ClassData(title: "微積分一", systemImage: "", shortTitle: "微積分一", place: "綜三201", teacher: "江金城", category: .required),
    ],
    [ // 3
        nil,
        ClassData(title: "普通物理A一", systemImage: "", shortTitle: "普物A一", place: "普實130", teacher: "徐百嫻", category: .required),
        ClassData(title: "數學導論", systemImage: "", shortTitle: "數學導論", place: "綜三101", teacher: "東聖甯", category: .required),
        ClassData(title: "普通物理A一", systemImage: "", shortTitle: "普物A一", place: "普實130", teacher: "徐百嫻", category: .required),
        ClassData(title: "中級英文一", systemImage: "", shortTitle: "中級英文", place: "教103", teacher: "金祖詠", category: .required)
    ],
    [ // 4
        nil,
        ClassData(title: "普通物理A一", systemImage: "", shortTitle: "普物A一", place: "普實130", teacher: "徐百嫻", category: .required),
        ClassData(title: "數學導論", systemImage: "", shortTitle: "數學導論", place: "綜三101", teacher: "東聖甯", category: .required),
        ClassData(title: "普通物理A一", systemImage: "", shortTitle: "普物A一", place: "普實130", teacher: "徐百嫻", category: .required),
        ClassData(title: "中級英文一", systemImage: "", shortTitle: "中級英文", place: "教103", teacher: "金祖詠", category: .required)
    ],
    [ // 5
        nil,
        nil,
        nil,
        nil,
        nil,
    ],
    [ // 6
        ClassData(title: "大一體育", systemImage: "", shortTitle: "大一體育", place: "", teacher: "梁嘉文", category: .required),
        nil,
        ClassData(title: "線性代數一", systemImage: "", shortTitle: "線代一", place: "綜三201", teacher: "陳昰宇", category: .required),
        ClassData(title: "環境規劃與管理", systemImage: "", shortTitle: "環境規劃", place: "教院126", teacher: "李旻軒", category: .liberal),
        ClassData(title: "數學導論", systemImage: "", shortTitle: "數學導論", place: "綜三101", teacher: "東聖甯", category: .required),
    ],
    [ // 7
        ClassData(title: "大一體育", systemImage: "", shortTitle: "大一體育", place: "", teacher: "梁嘉文", category: .required),
        nil,
        ClassData(title: "線性代數一", systemImage: "", shortTitle: "線代一", place: "綜三201", teacher: "陳昰宇", category: .required),
        ClassData(title: "環境規劃與管理", systemImage: "", shortTitle: "環境規劃", place: "教院126", teacher: "李旻軒", category: .liberal),
        ClassData(title: "數學導論", systemImage: "", shortTitle: "數學導論", place: "綜三101", teacher: "東聖甯", category: .required),
    ],
    [ // 8
        nil,
        ClassData(title: "線性代數一", systemImage: "", shortTitle: "線代一", place: "綜三201", teacher: "陳昰宇", category: .required),
        nil,
        ClassData(title: "程式設計一", systemImage: "", shortTitle: "程式一", place: "綜三315", teacher: "卓綵倫", category: .required),
    ],
    [ // 9
        nil,
        nil,
        nil,
        ClassData(title: "程式設計一", systemImage: "", shortTitle: "程式一", place: "綜三315", teacher: "卓綵倫", category: .required),
    ],
    [ // 10
        nil,
        nil,
        nil,
        ClassData(title: "程式設計一", systemImage: "", shortTitle: "程式一", place: "綜三315", teacher: "卓綵倫", category: .required),
    ],
    [ // A
        ClassData(title: "微積分一", systemImage: "", shortTitle: "微積分一", place: "綜三201", teacher: "江金城", category: .required),
    ],
    [ // B
        ClassData(title: "微積分一", systemImage: "", shortTitle: "微積分一", place: "綜三201", teacher: "江金城", category: .required),
    ],
    [ // C
        ClassData(title: "微積分一", systemImage: "", shortTitle: "微積分一", place: "綜三201", teacher: "江金城", category: .required),
    ],
    [ // D
        nil,
    ]
]

#endif
