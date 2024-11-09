import SwiftUI

struct AppVerView3: View {
    var body: some View {
        Text("アプリver 2.1.00について")
            .font(.title)
            .padding()
        
        Text("・メニューのリストを追加しました")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        Text("・サイトの追加しました。")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        Text("・お知らせの追加をしました。")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
    }
}

#Preview {
    AppVerView3()
}
