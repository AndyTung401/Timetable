//
//  Timetable_VivianApp.swift
//  Timetable-Vivian
//
//  Created by 董承威 on 2025/8/31.
//

import SwiftUI

@main
struct Timetable_VivianApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(width: 1050, height: 1022)
                .background(.white)
                .navigationTitle("大一上課表")
        }
        .windowResizability(.contentSize)
    }
}
