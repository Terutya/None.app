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
                            .frame(width: 250 ,height: 250)
                            .padding()
                    }
                    Text("↑")
                    Text("こちらはニコニコ動画(Re: 仮)のサイトに繋がります。")
                    NavigationLink(destination: ePlusView()) {
                        Image("buttonImage2")
                            .resizable()
                            .frame(width: 430, height: 260)
                            .padding()
                    }
                    NavigationLink(destination: MusicUI()) {
                        Image("buttonImage3")
                            .resizable()
                            .frame(width: 400, height: 225)
                            .padding()
                        
                    }
                    NavigationLink(destination: SiteView()) {
                        Image("buttonImage")
                            .resizable()
                            .frame(width: 450, height: 230)
                            .padding()
                    }
                    Text("↑")
                    Text("こちらは現在繋がりません。ご了承ください。")
                }
                
                ForEach(0..<10) { _ in
                    Spacer()
                }
                
                VStack {
                    Text("制作者のSNS一覧")
                        .font(.headline)
                        .padding()
                    Link(destination: URL(string: "https://x.com/teru_Cinnamon")!, label: {
                        Text("X(旧Twitter)")
                    })
                    .padding()
                    
                    Link(destination: URL(string: "https://www.instagram.com/terutya_cinnamoroll/")!, label: {
                        Text("Instagram")
                    })
                    .padding(.bottom)
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

