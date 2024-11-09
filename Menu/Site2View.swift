import SwiftUI
import WebKit

struct Site2View: View {
    var body: some View {
        GeometryReader { geometry in
            WebView7(url: URL(string: "https://www.marasy8.com")!)
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("まらしぃ サークルオフィシャルサイト")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct WebView7: UIViewRepresentable {
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
    Site2View()
}
