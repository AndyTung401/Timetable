//
//  SharingView.swift
//  Timetable-Andy
//
//  Created by 董承威 on 2025/8/31.
//

import SwiftUI
import PDFKit

struct SizeKey: PreferenceKey {
    static var defaultValue: CGSize = .zero
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        value = nextValue()
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

enum ExportType: String, Hashable {
    case png
    case pdf
}

struct SharingView: View {
    @State var size: Double = 2500
    @State var largeLayout: Bool = false
    @State var contentPadding: Double = 0
    @State var horizontalPadding: Double = 0
    @State var verticalPadding: Double = 0
    @State var exportType = ExportType.png
    @State var showExportSheet = false
    @State var showPreferencesPopover: Bool = false
    
    var body: some View {
        NavigationStack {
            ScrollView([.horizontal, .vertical]) {
                ContentView(contentPadding: contentPadding, horizontalPadding: horizontalPadding, verticalPadding: verticalPadding, largeLayout: $largeLayout)
                    .padding([.bottom, .horizontal], 30)
            }
            .scrollContentBackground(.hidden)
            #if os(macOS)
            .background(
                Color(nsColor: .underPageBackgroundColor)
                    .ignoresSafeArea()
            )
            #else
            .background(
                Color(uiColor: .secondarySystemBackground)
                    .ignoresSafeArea()
            )
            #endif
            .toolbar {
                ToolbarItem {
                    Button {
                        showPreferencesPopover.toggle()
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .popover(isPresented: $showPreferencesPopover) {
                        Form {
                            HStack {
                                #if os(iOS)
                                Image(systemName: "arrow.left.and.right.square")
                                #endif
                                Slider(value: $horizontalPadding, in: 0...50, step: 5) {
                                    Label("Horizontal Padding ", systemImage: "arrow.left.and.right.square")
                                }
                                ZStack {
                                    Text("00")
                                        .opacity(0)
                                    Text(String(Int(horizontalPadding)))
                                }
                                    .monospacedDigit()
                            }
                            HStack {
                                #if os(iOS)
                                Image(systemName: "arrow.up.and.down.square")
                                #endif
                                Slider(value: $verticalPadding, in: 0...50, step: 5) {
                                    Label("Vertical Padding ", systemImage: "arrow.up.and.down.square")
                                }
                                ZStack {
                                    Text("00")
                                        .opacity(0)
                                    Text(String(Int(verticalPadding)))
                                }
                                    .monospacedDigit()
                            }
                            HStack {
                                #if os(iOS)
                                Image(systemName: "arrow.down.left.and.arrow.up.right.square")
                                #endif
                                Slider(value: $contentPadding, in: 0...50, step: 5) {
                                    Label("Content Padding ", systemImage: "arrow.down.left.and.arrow.up.right.square")
                                }
                                ZStack {
                                    Text("00")
                                        .opacity(0)
                                    Text(String(Int(contentPadding)))
                                }
                                    .monospacedDigit()
                            }

                            Toggle("Large Layout", isOn: $largeLayout)
                                .toggleStyle(.switch)
                        }
                        .frame(width: 300)
                        #if os(iOS)
                        .frame( height: 500)
                        #endif
                        .padding()
                    }
                }
                ToolbarSpacer(.fixed)
                ToolbarItem {
                    Button {
                        showExportSheet = true
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                    }
                }
            }
            .sheet(isPresented: $showExportSheet) {
                VStack(spacing: 20) {
                    Form {
                        Picker(selection: $exportType) {
                            Label("PNG", systemImage: "photo")
                                .tag(ExportType.png)
                            Label("PDF", systemImage: "text.document.fill")
                                .tag(ExportType.pdf)
                        } label: {
                            Label("Format", systemImage: "document.fill")
                        }
                        .pickerStyle(.segmented)
                        TextField("Resolution (shortest side in px)", value: $size, format: .number)
                            .disabled(exportType == ExportType.pdf)
                        
                    }
                    HStack {
                        Button(role: .cancel) {
                            showExportSheet = false
                        }
                        .buttonStyle(.bordered)
                        ShareLink(item: shareLinkHandler(exportType))
                            .buttonStyle(.borderedProminent)
                    }
                }
                .padding()
            }
        }
    }
    
    /// 將 SwiftUI View 轉成 PDF，回傳檔案 URL
    private func renderPDF() -> URL {
        let renderer = ImageRenderer(content: ContentView(contentPadding: contentPadding, horizontalPadding: horizontalPadding, verticalPadding: verticalPadding, largeLayout: .constant(largeLayout)))

        let url = URL.documentsDirectory.appending(path: basicInfo.title+".pdf")

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
    
    func shareLinkHandler(_ exportType: ExportType) -> URL {
        switch exportType {
        case .png:
            return pdfToImage(pdfURL: renderPDF(), targetSize: .init(width: size, height: size), outputURL: URL.documentsDirectory.appending(path: basicInfo.title+".png"))!
        case .pdf:
            return renderPDF()
        }
    }
}


#Preview {
    SharingView()
}
