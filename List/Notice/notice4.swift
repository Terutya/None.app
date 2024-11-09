import SwiftUI

struct notice4: View{
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Spacer()
                    Text("ホーム画面やメニューバーの修正を行いました。")
                        .font(.title)
                        .padding()
                    Text("まらしぃサークルオフィシャルサイトの追加をしました。小さく表示されますが、不具合ではなく仕様になります。")
                        .font(.system(size: 23))
                        .padding()
                    Text("まらしぃオフィシャルサイトが見れないため、削除させていただきました。使用ができるようになりましたら、再度追加しようと考えています。また、新しくサイトが公開されたため、サイトの追加をしました。")
                        .font(.system(size: 23))
                        .padding()
                }
            }
        }
    }
}

#Preview {
    notice4()
}
