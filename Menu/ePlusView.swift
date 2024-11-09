//
//  ePlusUI.swift
//  None


import SwiftUI
import WebKit

struct ePlusView: View {
    @State private var shouldReload = false
    
    var body: some View {
        GeometryReader { geometry in
            WebView2(url: URL(string: "https://eplus.jp/sf/word/0000037099")!,shouldReload: $shouldReload)
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("まらしぃチケット情報")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem (placement: .navigationBarTrailing) {
                        Button(action: {
                            shouldReload = true
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
                                shouldReload = false
                            }
                        }) {
                            Image(systemName: "arrow.clockwise")
                                .resizable()
                                .frame(width: 20, height: 20)
                        }
                    }
                }
        }
    }
}

struct WebView2: UIViewRepresentable {
    let url: URL
    @Binding var shouldReload: Bool
    
    class Coordinator: NSObject{
        var parent: WebView2
        
        init(parent: WebView2) {
            self.parent = parent
        }
    }
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        webView.contentMode = .scaleAspectFill
        return webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if shouldReload {
            uiView.reload()
        }
    }
}
    
#Preview {
    ePlusView()
}

