//
//  ContentView.swift
//  Timetable-Andy
//
//  Created by 董承威 on 2025/8/31.
//

import SwiftUI



struct ContentView: View {
    @Environment(\.colorScheme) private var colorScheme
    
    @State var size: Double = 2500
    @State var largeLayout: Bool = false
    @State var contentPadding: Double = 0
    @State var horizontalPadding: Double = 0
    @State var verticalPadding: Double = 0
    @State var exportType = ExportType.png
    @State var exportLargeLayout: Bool = false
    @State var showExportSheet = false
    @State var showPreferencesPopover: Bool = false
    @State var pureBlack: Bool = false
    
    var body: some View {
        NavigationStack {
            ScrollView([.horizontal, .vertical]) {
                TableView(contentPadding: contentPadding, horizontalPadding: horizontalPadding, verticalPadding: verticalPadding, largeLayout: $largeLayout)
                    .background(canvaColor(for: colorScheme, pureBlack: pureBlack))
                    .navigationTitle(basicInfo.windowTitle)
                    .padding([.bottom, .horizontal], 30)
            }
            .defaultScrollAnchor(.zero)
            .scrollContentBackground(.hidden)
            .background(
                Color(white: 0.15)
                    .ignoresSafeArea()
            )
            .toolbar {
                ToolbarItem {
                    Button {
                        showPreferencesPopover.toggle()
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .popover(isPresented: $showPreferencesPopover) {
                        Form {
                            Section("Padding") {
                                HStack {
#if os(iOS)
                                    Image(systemName: "arrow.left.and.right.square")
#endif
                                    Slider(value: $horizontalPadding, in: 0...100, step: 5) {
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
                                    Slider(value: $verticalPadding, in: 0...100, step: 5) {
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
                                    Slider(value: $contentPadding, in: 0...100, step: 5) {
                                        Label("Content Padding ", systemImage: "arrow.down.left.and.arrow.up.right.square")
                                    }
                                    ZStack {
                                        Text("00")
                                            .opacity(0)
                                        Text(String(Int(contentPadding)))
                                    }
                                    .monospacedDigit()
                                }
                            }
                            
                            Section("Displays") {
                                Toggle(isOn: $pureBlack) {
                                    Label("Use Pure Black in Dark Mode ", systemImage: "moon.fill")
                                }
                                .toggleStyle(.switch)
                                
                                Toggle(isOn: $largeLayout) {
                                    Label("Large Layout ", systemImage: "textformat.size")
                                }
                                .toggleStyle(.switch)
                            }
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
                        exportLargeLayout = largeLayout
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
                        
                        Toggle("Export in Large Layout", isOn: $exportLargeLayout)
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
        let renderer = ImageRenderer(content:
                                        TableView(contentPadding: contentPadding, horizontalPadding: horizontalPadding, verticalPadding: verticalPadding, largeLayout: .constant(exportLargeLayout))
            .background(canvaColor(for: colorScheme, pureBlack: pureBlack))
        )

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
    ContentView()
    #if os(macOS)
        .frame(width: 1000, height: 800)
    #endif
}

