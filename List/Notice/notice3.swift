import SwiftUI

struct notice3: View{
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Spacer()
                    Text("利用できなかったサービスが利用できるようになりました")
                        .font(.title)
                        .padding()
                    Text("以前まで利用ができなかったサービスが8/5が利用できるようになりました。ご不便をおかけしまして、申し訳ありませんでした。")
                        .font(.system(size: 23))
                }
            }
        }
    }
}
