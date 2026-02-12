//
//  Types.swift
//  Timetable
//
//  Created by 董承威 on 2025/12/29.
//

import SwiftUI

#if os(macOS)
import AppKit

extension NSColor {
    /// 把 dynamic NSColor 解析成指定外觀下的「固定 RGB 顏色」
    func resolvedColor(in appearance: NSAppearance) -> NSColor {
        var out: NSColor = self
        appearance.performAsCurrentDrawingAppearance {
            // 在這個 appearance 的 context 裡取值，並轉成 RGB 固定色
            if let rgb = self.usingColorSpace(.deviceRGB) {
                out = NSColor(
                    calibratedRed: rgb.redComponent,
                    green: rgb.greenComponent,
                    blue: rgb.blueComponent,
                    alpha: rgb.alphaComponent
                )
            } else if let srgb = self.usingColorSpace(.sRGB) {
                out = NSColor(
                    calibratedRed: srgb.redComponent,
                    green: srgb.greenComponent,
                    blue: srgb.blueComponent,
                    alpha: srgb.alphaComponent
                )
            }
        }
        return out
    }
}

extension Color {
    static func resolved(_ nsColor: NSColor, in appearance: NSAppearance) -> Color {
        Color(nsColor: nsColor.resolvedColor(in: appearance))
    }
}
#endif


enum UserTheme: Hashable {
    case light
    case dark
    case black
    var toColorScheme: ColorScheme {
        switch self {
        case .light: return .light
        case .dark: return .dark
        case .black: return .dark
        }
    }
    var iconName: String {
        switch self {
        case .light: return "sun.max.fill"
        case .dark: return "moon.stars.fill"
        case .black: return "moon.fill"
        }
    }
    var canvasColor: Color {
        switch self {
        case .light:
            Color(white: 1)
        case .dark:
            Color(white: 0.1)
        case .black:
            Color(white: 0)
        }
    }
}

enum Category: String {
    case compulsory
    case required
    case elective
    case liberal
    case other
}

extension Category {
    var color : Color {
        switch self {
        case .compulsory:
            return .gray
        case .required:
            return .blue
        case .elective:
            return .teal
        case .liberal:
            return .yellow
        case .other:
            return .green
        }
    }
}

struct BasicInfo {
    var title: String
    var topLeft: String
    var bottomLeft: String
    var topRight: String
    var bottomRight: String
    var credits: Int
    var windowTitle: String
}

struct ClassData: Identifiable {
    var id = UUID()
    var title, systemImage, shortTitle, place, teacher: String
    var category: Category
}

struct TimePeriod: Identifiable {
    var id = UUID()
    var index: Int
    var serial, startTime, endTime: String
}
