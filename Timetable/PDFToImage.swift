//
//  ExportType.swift
//  Timetable
//
//  Created by 董承威 on 2025/12/29.
//


import PDFKit
import UniformTypeIdentifiers

enum ExportType: String, Hashable {
    case png
    case pdf
    var contentType: UTType {
        switch self {
        case .png:
            .png
        case .pdf:
            .pdf
        }
    }
}

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
    let scale = min(
        targetSize.width / pdfRect.width,
        targetSize.height / pdfRect.height
    )

    let scaledSize = CGSize(
        width: pdfRect.width * scale,
        height: pdfRect.height * scale
    )

    #if os(macOS)

    // ===== macOS（你原本的邏輯）=====
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

    context.scaleBy(x: scale, y: scale)
    page.draw(with: .mediaBox, to: context)

    if let data = bitmapRep.representation(using: .png, properties: [:]) {
        try? data.write(to: outputURL)
        return outputURL
    }

    #else

    // ===== iPad / iOS =====
    let renderer = UIGraphicsImageRenderer(size: scaledSize)

    let image = renderer.image { ctx in
        let context = ctx.cgContext
        context.translateBy(x: 0, y: scaledSize.height)
        context.scaleBy(x: 1, y: -1)
        context.scaleBy(x: scale, y: scale)
        page.draw(with: .mediaBox, to: context)
    }

    if let data = image.pngData() {
        try? data.write(to: outputURL)
        return outputURL
    }

    #endif

    return nil
}
