//
//  MusicUI.swift
//  None


import SwiftUI
import WebKit

struct MusicUI: View {
    let urls = [
        ("Apple Music", URL(string: "https://music.apple.com/jp/artist/marasy/408616517")!),
        ("Spotify", URL(string: "https://open.spotify.com/intl-ja/artist/3Y2hPbg4GHOheV4Hc9lpXV?autoplay=true")!),
        ("Amazon Music", URL(string: "https://www.amazon.co.jp/music/player/artists/B00JQ8FNOA/まらしぃ")!),
        ("Youtube Music", URL(string: "https://music.youtube.com/channel/UCAVb__iCHVe7pN8iNh4oh-A")!),
        ("LINE MUSIC", URL(string: "https://music.line.me/webapp/artist/mi0000000013569be7")!),
        ("AWA", URL(string:"https://s.awa.fm/artist/297e7fadf4ef6162f704?action=play&play_type=google_assistant")!),
        ("mora", URL(string: "https://mora.jp/artist/404945/")!),
        ("レコチョク", URL(string: "https://recochoku.jp/artist/2000228467/")!),
        ("dミュージック", URL(string: "https://dmusic.docomo.ne.jp/artist/2001323898")!),
        ("TOWER RECODE MUSIC", URL(string: "https://music.tower.jp/artist/detail/2000228467")!)
    ]
    
    var body: some View {
        List(urls, id: \.1) { name, url in
            NavigationLink(destination: WebViewContainer(url: url)) {
                Text(name)
            }
        }
        .navigationTitle("音楽配信一覧")
    }
}

struct WebViewContainer: View {
    let url: URL
    
    var body: some View {
        WebView5(url: url)
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(false)
    }
}

struct WebView5: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
#Preview {
    MusicUI()
}
