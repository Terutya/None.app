import SwiftUI
import WebKit

struct Site3View: View {
    var body: some View {
        GeometryReader { geometry in
            WebView8(url: URL(string: "https://www.subcul-rise.jp/marasy/pianomonkeys/")!)
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("CD & marasy Piano Live Asia Tour 2025サイト")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct WebView8: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        webView.contentMode = .scaleAspectFill
        return webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {}
}

#Preview {
    Site3View()
}



