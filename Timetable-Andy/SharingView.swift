//
//  SharingView.swift
//  Timetable-Andy
//
//  Created by 董承威 on 2025/8/31.
//

import SwiftUI

struct SharingView: View {
    var body: some View {
        ContentView()
            .toolbar {
                ShareLink(item: renderPDF())
            }
    }
    
    /// 將 SwiftUI View 轉成 PDF，回傳檔案 URL
    private func renderPDF() -> URL {
        let renderer = ImageRenderer(content:
            ContentView()
        )

        let url = URL.documentsDirectory.appending(path: "output.pdf")

        renderer.render { size, context in
            var box = CGRect(origin: .zero, size: size)

            guard let pdf = CGContext(url as CFURL, mediaBox: &box, nil) else {
                return
            }

            pdf.beginPDFPage(nil)
            context(pdf)
            pdf.endPDFPage()
            pdf.closePDF()
        }

        return url
    }
}



#Preview {
    SharingView()
}
