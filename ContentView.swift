
import SwiftUI
import WebKit

struct ContentView1: View {
    @State private var showMenu = false
    @State private var isLoggedIn = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    NavigationLink(destination: NikonikoView()){
                        Image("buttonImage4")
                            .resizable()
                            .frame(width: 300 ,height: 300)
                            .padding()
                    }
                    Text("まらしぃチャンネル")
//                    NavigationLink(destination: SiteView()) {
//                        Image("buttonImage")
//                            .resizable()
//                            .frame(width: 450, height: 230)
//                            .padding()
//                    }
                    NavigationLink(destination: Site2View()) {
                        Image("buttonImage5")
                            .resizable()
                            .frame(width: 300, height: 300)
                            .padding()
                    }
                    Text("まらしぃ　サークルオフィシャルサイト")
                    Spacer()
                    NavigationLink(destination: Site3View()) {
                        Image("buttonImage6")
                            .resizable()
                            .frame(width: 300, height: 320)
                            .padding()
                    }
                    Text("CD & marasy Piano Live Asia Tour 2025サイト")

                    NavigationLink(destination: ePlusView()) {
                        Image("buttonImage2")
                            .resizable()
                            .frame(width: 440, height: 270)
                            .padding()
                    }
                    Text("まらしぃチケット情報")
                    Spacer()
                    NavigationLink(destination: MusicUI()) {
                        Image("buttonImage3")
                            .resizable()
                            .frame(width: 440, height: 270)
                            .padding()
                    }
                }
                
                ForEach(0..<10) { _ in
                    Spacer()
                }
                
                VStack {
                    Text("制作者のSNS一覧")
                        .font(.headline)
                        .padding()
                    
                    Link(destination: URL(string: "")!, label: {
                        Text("X")
                    })
                    .padding(.bottom)
                    
                    Link(destination: URL(string: "")!, label: {
                        Text("Instagram")
                    })
                    .padding(.bottom)
                    
                    Link(destination: URL(string: "")!, label: {
                        Text("Fiicen")
                    })
                    .padding(.bottom)

                    Text("アプリのコード一覧")
                        .font(.headline)
                        .padding()
                    
                    Link(destination: URL(string: "https://github.com/Terutya/None.app")!,
                         label: {
                        Text("GitHub(外部サイトに接続します)")
                    })
                }
                .navigationTitle("Home")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            showMenu.toggle()
                        }){
                            Image(systemName: "line.horizontal.3")
                                .frame(width: 20, height: 20)
                        }
                    }
                }
                .sheet(isPresented: $showMenu){
                    MenuView(showMenu: $showMenu, isLoggedIn: $isLoggedIn)
                }
            }
        }
    }
}

#Preview {
    ContentView1()
}
