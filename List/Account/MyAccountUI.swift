import SwiftUI

struct MyAccountUI: View {
    @Binding var isLoggedIn: Bool
    
    var body: some View {
        List{
            Button("アカウントの削除") {
                UserDefaults.standard.removeObject(forKey: "username")
                UserDefaults.standard.removeObject(forKey: "password")
                isLoggedIn = false
            }
            .padding()
        }
    }
}

