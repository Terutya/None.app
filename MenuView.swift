import SwiftUI

struct MenuView: View {
    @Binding var showMenu: Bool
    @Binding var isLoggedIn: Bool

    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("メニュー")) {
                        
                        NavigationLink(destination: NoticeListView()) {
                            Text("お知らせ\n Notice")
                        }
                        NavigationLink(destination: NikonikoView()){
                            Text("まらしぃチャンネル　\n Niconico marasy's channel")
                        }
//                        NavigationLink(destination: SiteView()){
//                            Text("まらしぃオフィシャルサイト　\n marasy official website")
//                        }
                        NavigationLink(destination: Site2View()){
                            Text("まらしぃ サークルオフィシャルサイト　\n marasy's circle official website")
                        }
                        NavigationLink(destination: Site3View()){
                            Text(" CD & marasy Piano Live Asia Tour 2025サイト \n Piano monkeys marasy & marasy Piano Live Asia Tour 2025 Website ")
                        }
                        NavigationLink(destination: ePlusView()){
                            Text("チケット情報　\n Ticket information")
                        }
                        NavigationLink(destination: MusicUI()){
                            Text("音楽配信サービス　\n Music Streaming Service")
                        }
                    }
                    Section(header: Text("設定")){
                        NavigationLink(destination: Setting()) {
                            Text("アプリの設定\n App Setting")
                        }
                    }
                    Section(header: Text("アプリ情報")){
                        NavigationLink(destination: AppVerListView()) {
                            Text("バージョンの確認\n Version Confirmation")
                        }
                    }
                }
                .listStyle(GroupedListStyle())
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            showMenu = false
                        }) {
                            Image(systemName: "chevron.left")
                                .resizable()
                                .frame(width: 15, height: 15)
                                .padding()
                        }
                    }
                }
            }
        }
    }
}

// プレビューを表示
struct MenuView_Previews: PreviewProvider {
    @State static var showMenu = true
    @State static var isLoggedIn = false

    static var previews: some View {
        MenuView(showMenu: $showMenu, isLoggedIn: $isLoggedIn)
    }
}
