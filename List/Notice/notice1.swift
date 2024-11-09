import SwiftUI

struct notice1: View{
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        NavigationView{
            ScrollView{
                VStack{
                    Spacer()
                    Text("アプリの作成に至ったきっかけ")
                        .font(.title)
                        .padding()
                    Text("元々アプリ開発、ソフトウェア開発に興味があったので,プログラム言語を何しようと考えた時に、「Swift言語は将来性がある」と書いていたので、だったら、Swift言語習得をしようと考えました。")
                        .font(.system(size: 20))
                        .padding()
                }
            }
        }
    }
}

#Preview {
    notice1()
}
