import SwiftUI

struct NoticeListView: View {
    var body: some View {
        List {
            NavigationLink(destination: notice5()){
                Text("微妙な調整を行いました")
            }
            NavigationLink(destination: notice4()){
                Text("ホーム画面やメニューバーの修正を行いました")
            }
            NavigationLink(destination: notice3()){
                Text("一部サービスが利用できるようになりました")
            }
            NavigationLink(destination: Notice2()) {
                Text("【お詫び】一部のサービスが利用できない状況について")
            }
            NavigationLink(destination: notice1()){
                Text("アプリの作成に至ったきっかけ")
            }
        }
        .navigationTitle("Notices")
    }
}
