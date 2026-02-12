//
//  ExportedFile.swift
//  Timetable
//
//  Created by 董承威 on 2025/12/31.
//

import SwiftUI
import UniformTypeIdentifiers

struct ExportedFile: FileDocument {
    static var readableContentTypes: [UTType] { [.pdf, .png] }

    let data: Data

    init(data: Data) {
        self.data = data
    }

    init(configuration: ReadConfiguration) throws {
        fatalError()
    }

    func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        FileWrapper(regularFileWithContents: data)
    }
}
