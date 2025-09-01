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
        }
        .windowResizability(.contentSize)
    }
}
