import SwiftUI

struct SignUpView: View {
    @Binding var isLoggedIn: Bool
    @State private var newUsername: String = ""
    @State private var newPassword: String = ""
    @State private var isShowingAlert = false
    @State private var alertMessage = ""
    @State private var showPassword = false
    
    var body: some View {
        VStack {
            TextField("新しいユーザー名", text: $newUsername)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("推測しやすいパスワードの設定はおやめください")
                .padding()
            
            HStack {
                if showPassword {
                    TextField("新しいパスワード", text: $newPassword)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.leading)
                } else {
                    SecureField("新しいパスワード", text: $newPassword)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.leading)
                }
                
                Button(action: {
                    showPassword.toggle()
                }) {
                    Image(systemName: showPassword ? "eye.slash" : "eye")
                        .foregroundColor(.gray)
                        .padding(.trailing, 16)
                }
            }
        }
        
        Button("アカウントの作成") {
            if newUsername.isEmpty {
                alertMessage = "ユーザー名を入力してください。"
                isShowingAlert = true
            } else if newPassword.count < 8 {
                alertMessage = "パスワードは8文字以上"
                isShowingAlert = true
            } else if isUsernameTaken(newUsername) {
                alertMessage = "このユーザー名は使用されています。"
                isShowingAlert = true
            } else {
                UserDefaults.standard.set(newUsername, forKey: "username")
                UserDefaults.standard.set(newPassword, forKey: "password")
                isLoggedIn = true // 仮のログイン状態の更新
            }
        }
        .padding()
        .alert(isPresented: $isShowingAlert) {
            Alert(title: Text("登録エラー"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        }
        .navigationTitle("新しいアカウントの作成")
        .navigationBarTitleDisplayMode(.inline)
    }
}

func isUsernameTaken (_ username: String) -> Bool {
    let usernames = UserDefaults.standard.stringArray(forKey: "usernames") ?? []
    return usernames.contains(username)
}

func saveUser(_ username: String, password: String) {
    var usernames = UserDefaults.standard.stringArray(forKey: "usernames") ?? []
    usernames.append(username)
    
    UserDefaults.standard.set(usernames, forKey: "usernames")
    UserDefaults.standard.set(password, forKey: username + "passwoed")
}
