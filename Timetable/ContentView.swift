//
//  ContentView.swift
//  Timetable-Andy
//
//  Created by 董承威 on 2025/8/31.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) private var systemColorScheme
    
    @State var size: Double = 2500
    @State var largeLayout: Bool = false
    @State var contentPadding: Double = 0
    @State var horizontalPadding: Double = 0
    @State var verticalPadding: Double = 0
    var effectivePadding: EdgeInsets {
        let h = CGFloat(contentPadding + horizontalPadding)
        let v = CGFloat(contentPadding + verticalPadding)
        return EdgeInsets(top: v, leading: h, bottom: v, trailing: h)
    }
    
    @State private var showIcon = true
    
    @State var exportType = ExportType.png
    @State var userTheme: UserTheme = .light
    @State var exportURL: URL?
    
    @State var hightlightShare: Bool = false
    
    var body: some View {
        NavigationSplitView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Padding")
                    .fontWeight(.bold)
                    .font(.title)
                VStack(alignment: .leading)  {
                    HStack {
#if os(iOS)
                        Image(systemName: "arrow.left.and.right.square")
#endif
                        Label("Horizontal ", systemImage: "arrow.left.and.right.square")
                        Spacer()
                        Text(String(Int(horizontalPadding)))
                        .monospacedDigit()
                        
                        
                    }
                    Slider(value: $horizontalPadding, in: 0...100, step: 5) {
                        Text("")
                    }
                    HStack {
#if os(iOS)
                        Image(systemName: "arrow.up.and.down.square")
#endif
                        Label("Vertical ", systemImage: "arrow.up.and.down.square")
                        Spacer()
                        Text(String(Int(verticalPadding)))
                        .monospacedDigit()
                    }
                    Slider(value: $verticalPadding, in: 0...100, step: 5) {
                        Text("")
                    }
                    HStack {
#if os(iOS)
                        Image(systemName: "arrow.down.left.and.arrow.up.right.square")
#endif
                        Label("Content ", systemImage: "arrow.down.left.and.arrow.up.right.square")
                        Spacer()
                        Text(String(Int(contentPadding)))
                        .monospacedDigit()
                    }
                    Slider(value: $contentPadding, in: 0...100, step: 5) {
                       Text("")
                    }
                }
                
                Text("Displays")
                    .fontWeight(.bold)
                    .font(.title)
                VStack(alignment: .leading)  {
                    Label("Theme", systemImage: userTheme.iconName)
                        .contentTransition(.symbolEffect(.replace.magic(fallback: .upUp.byLayer), options: .nonRepeating))
                    Picker(selection: $userTheme) {
                        Text("Light")
                            .tag(UserTheme.light)
                        Text("Dark")
                            .tag(UserTheme.dark)
                        Text("Black")
                            .tag(UserTheme.black)
                    } label: {
                        Label("", systemImage: "")
                    }
                    .pickerStyle(.segmented)
                    .fixedSize()
                    
                    Label("Large Layout ", systemImage: "textformat.size")
                    Toggle("", isOn: $largeLayout)
                    
                    Label("Show Icon", systemImage: "character.circle.fill")
                    Toggle("", isOn: $showIcon)
                }
                .toggleStyle(.switch)
                
                Spacer()
                Divider()
                Text("Export")
                    .fontWeight(.bold)
                    .font(.title)
                VStack(alignment: .leading)  {
                    Label("Format", systemImage: "text.document.fill")
                    Picker("", selection: $exportType) {
                        Text("PNG")
                            .tag(ExportType.png)
                        Text("PDF")
                            .tag(ExportType.pdf)
                    }
                    .pickerStyle(.segmented)
                    
                    Label("Resolution (shortest side in px)", systemImage: "mosaic.fill")
                    TextField("", value: $size, format: .number)
                        .disabled(exportType == ExportType.pdf)
                    
                    
                    HStack {
                        if hightlightShare {
                            Button {
                                exportURL = shareLinkHandler(exportType)
                                hightlightShare = true
                            } label: {
                                Text("Render!")
                            }
                            .buttonStyle(.bordered)
                            if exportURL == nil {
                                ShareLink(item: URL(filePath: ""))
                                    .disabled(exportURL == nil)
                            } else {
                                ShareLink(item: exportURL!)
                                    .disabled(exportURL == nil)
                                .buttonStyle(.borderedProminent)
                            }
                        } else {
                            Button {
                                exportURL = shareLinkHandler(exportType)
                                hightlightShare = true
                            } label: {
                                Text("Render!")
                            }
                            .buttonStyle(.borderedProminent)
                            ShareLink(item: exportURL ?? URL(filePath: ""))
                                .disabled(exportURL == nil)
                                .buttonStyle(.bordered)
                        }
                    }
                }
            }
            .padding()
            .onChange(of: largeLayout) { _, _ in
                hightlightShare = false
            }
            .onChange(of: effectivePadding) { _, _ in
                hightlightShare = false
            }
        } detail: {
            ScrollView([.horizontal, .vertical]) {
                TableView(largeLayout: $largeLayout, showIcon: showIcon)
                    .padding(effectivePadding)
                    .background(userTheme.canvasColor)
                    .navigationTitle(basicInfo.windowTitle)
                    .padding([.bottom, .horizontal], 30)
            }
            .defaultScrollAnchor(.zero)
            .scrollContentBackground(.hidden)
            .background(
                Color(white: userTheme == .light ? 0.7 : 0.15)
                    .ignoresSafeArea()
            )
        }
        .onAppear {
            userTheme = (systemColorScheme == .light ? .light : .dark)
        }
        .preferredColorScheme(userTheme.toColorScheme)
    }
    
    /// 將 SwiftUI View 轉成 PDF，回傳檔案 URL
    private func renderPDF() -> URL {
        let renderer = ImageRenderer(content:
                                        TableView(largeLayout: .constant(largeLayout), showIcon: showIcon)
            .padding(effectivePadding)
            .background(userTheme.canvasColor)
            .environment(\.colorScheme, userTheme.toColorScheme)
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
