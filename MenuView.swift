import SwiftUI

struct MenuView: View {
    @Binding var showMenu: Bool
    @Binding var isLoggedIn: Bool

    var body: some View {
        NavigationView {
            VStack {
                List {
                    NavigationLink(destination: NoticeListView()) {
                        Text("お知らせ\n Notice")
                    }
                    if !isLoggedIn {
                        NavigationLink(destination: SignInView(isLoggedIn: $isLoggedIn)) {
                            Text("ログイン\n LogIn")
                        }
                    } else {
                        NavigationLink(destination: MyAccountUI(isLoggedIn: $isLoggedIn)) {
                            Text("マイページ\n Mypage")
                        }
                        NavigationLink(destination: LogOutUI(isLoggedIn: $isLoggedIn)) {
                            Text("ログアウト\n LogOut")
                        }
                    }
                    NavigationLink(destination: AppVerView()) {
                        Text("バージョンの確認\n Version Confirmation")
                    }
                }
                .listStyle(GroupedListStyle())
                .navigationTitle("メニュー")
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
