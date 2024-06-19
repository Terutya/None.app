import SwiftUI

struct NoticeView1: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Spacer()
                    Text("【お詫び】 6/19更新　一部のサービスが利用できない状況について")
                        .font(.title)
                        .padding()
                    
                    Text("現在、ニコニコサービスにおいて、\n大規模なサイバー攻撃を受けたため、\nまらしぃチャンネル並びに,まらしぃ公式サイトが使用できなくなっています。\nニコニコ様のシステム復旧まで今しばらくをお待ちください。\nニコニコサービスにおいて、ニコニコ動画Re:(仮)が開設され、一部の動画を見ることができる様になっています。システム全面復旧までしばらくお待ちください。")
                        .font(.system(size: 24))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    Divider()
                        .padding(.horizontal)
                        .padding()
                    
                    Text("ニコニコサービスにつきまして、詳しい情報は以下のURLからご覧いただけます。")
                        .font(.system(size: 24))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding()
                    
                    HStack {
                        Spacer()
                        Link(destination: URL(string: "https://blog.nicovideo.jp/niconews/225099.html")!) {
                            Text("https://blog.nicovideo.jp/niconews/225099.html")
                        }
                        .padding()
                        Spacer()
                    }
                    
                    Text("また、ニコニコ様の公式Xでも随時お知らせしていますので、以下のURLからご覧いただきますよう、お願い申し上げます。")
                        .font(.system(size: 24))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding()
                    
                    HStack {
                        Spacer()
                        Link(destination: URL(string: "https://x.com/nico_nico_info?s=21&t=DiqfvrDr4y_L5pKXlOtSAQ")!) {
                            Text("https://x.com/nico_nico_info?s=21&t=DiqfvrDr4y_L5pKXlOtSAQ")
                        }
                        .multilineTextAlignment(.center)
                        .padding()
                        Spacer()
                    }
                    
                    Divider()
                        .padding()
                        .padding(.horizontal)
                    
                    Text("写真の下に掲示された注意書きがありますので、確認していただきますよう、お願い申し上げます、ご理解とご協力をお願い申し上げます。")
                        .font(.system(size: 24))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    Spacer()
                }
            }
            .navigationBarTitle("【お詫び】一部のサービスが利用できない状況について", displayMode: .inline)
         }
    }
}
