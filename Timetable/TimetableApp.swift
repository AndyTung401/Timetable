//
//  TimetableApp.swift
//  Timetable
//
//  Created by 董承威 on 2025/9/1.
//

import SwiftUI

@main
struct TimetableApp: App {
    var body: some Scene {
        WindowGroup {
            SharingView()
            //下一步：define custom size
            #if os(macOS)
                .dynamicTypeSize(.medium ... .medium)
            #else
                .dynamicTypeSize(.xSmall ... .xSmall)
            #endif
        }
        .windowResizability(.contentSize)
    }
}
