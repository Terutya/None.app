import SwiftUI

struct SignInView: View {
    @Binding var isLoggedIn: Bool
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isShowingAlert = false     //アラートの表示
    @State private var showPassword = false
    
    var body: some View {
        VStack {
            Spacer()
            Text("Username")
            TextField("ユーザー名", text: $username)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Password    8 or more alphanumeric characters")
            HStack {
                if showPassword {
                    TextField("パスワード　英数字8文字以上Password       8 or more alphanumeric characters", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.leading)
                } else {
                    SecureField("パスワード　英数字8文字以上\n Password       8 or more alphanumeric characters", text: $password)
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

            
            Button("ログイン\n LogIn") {
                if let savedUsername = UserDefaults.standard.string(forKey: "username"),
                   let savedPassword = UserDefaults.standard.string(forKey: "password"),
                username == savedUsername && password == savedPassword {
                    isLoggedIn = true
                } else {
                    isShowingAlert = true   //ログインの失敗の時アラート表示
                }
            }
            .padding()
            .alert(isPresented: $isShowingAlert) {
                Alert(title: Text("ログインできません"), message: Text("ユーザー名またはパスワードが間違っています。 アカウントの作成をしていない方は、新しいアカウントの作成からアカウントを作成してください"), dismissButton: .default(Text("OK!!")))
            }
            .navigationTitle("ログイン\n LogIn")
            .navigationBarTitleDisplayMode(.inline)
            
            NavigationLink(destination: SignUpView(isLoggedIn: $isLoggedIn)) {
                Text("新しいアカウントの作成\n Create an Account")
            }
            .padding()
            Spacer()
        }
    }
}

