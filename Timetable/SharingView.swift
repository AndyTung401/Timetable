//
//  SharingView.swift
//  Timetable
//
//  Created by 董承威 on 2025/9/1.
//

import SwiftUI
import PDFKit

/// 將 PDF (第一頁) 轉成 PNG 圖片
/// - Parameters:
///   - pdfURL: 輸入 PDF 檔案 URL
///   - targetSize: 目標圖片尺寸
///   - outputURL: 輸出圖片 URL
/// - Returns: 轉換成功後的圖片 URL，否則為 nil
func pdfToImage(
    pdfURL: URL,
    targetSize: CGSize,
    outputURL: URL
) -> URL? {
    guard let pdfDoc = PDFDocument(url: pdfURL),
          let page = pdfDoc.page(at: 0) else {
        return nil
    }
    
    let pdfRect = page.bounds(for: .mediaBox)
    let scaleX = targetSize.width / pdfRect.width
    let scaleY = targetSize.height / pdfRect.height
    let scale = min(scaleX, scaleY)
    let scaledSize = CGSize(width: pdfRect.width * scale,
                            height: pdfRect.height * scale)
    
    guard let bitmapRep = NSBitmapImageRep(
        bitmapDataPlanes: nil,
        pixelsWide: Int(scaledSize.width),
        pixelsHigh: Int(scaledSize.height),
        bitsPerSample: 8,
        samplesPerPixel: 4,
        hasAlpha: true,
        isPlanar: false,
        colorSpaceName: .deviceRGB,
        bytesPerRow: 0,
        bitsPerPixel: 0
    ),
    let context = NSGraphicsContext(bitmapImageRep: bitmapRep)?.cgContext else {
        return nil
    }
    
    
    // 白底
    context.saveGState()

    // === 第一步：旋轉 180° ===
    context.translateBy(x: scaledSize.width, y: scaledSize.height)
    context.rotate(by: .pi)   // 180 度

    // === 第二步：左右翻轉 ===
    context.translateBy(x: scaledSize.width, y: 0)
    context.scaleBy(x: -1, y: 1)

    // === 第三步：套 PDF 的縮放 ===
    context.translateBy(x: 0, y: scaledSize.height)
    context.scaleBy(x: scale, y: -scale)

    page.draw(with: .mediaBox, to: context)

    context.restoreGState()
    
    
    // 存成 PNG
    if let data = bitmapRep.representation(using: .png, properties: [:]) {
        do {
            try data.write(to: outputURL)
            return outputURL
        } catch {
            print("❌ 寫檔失敗: \(error)")
            return nil
        }
    }
    return nil
}

struct SharingView: View {
    var size: Double = 2500
    
    var body: some View {
        ContentView()
            .toolbar {
//                ShareLink(item: renderPDF())
                ShareLink(item: pdfToImage(pdfURL: renderPDF(), targetSize: .init(width: size, height: size), outputURL: URL.documentsDirectory.appending(path: "output.png"))!)
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

