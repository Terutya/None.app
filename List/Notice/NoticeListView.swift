import SwiftUI

struct NoticeListView: View {
    var body: some View {
        List {
            NavigationLink(destination: NoticeView1()) {
                Text("【お詫び】一部のサービスが利用できない状況について")
            }
        }
        .navigationTitle("Notices")
    }
}
