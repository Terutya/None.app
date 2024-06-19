import SwiftUI

struct LogOutUI: View {
    @Binding var isLoggedIn: Bool
    
    var body: some View {
        VStack {
            Text("ログアウトしますか？")
                .padding()
            Button("ログアウト") {
                isLoggedIn = false
            }
            .padding()
        }
        .navigationTitle("ログアウト")
        .navigationBarTitleDisplayMode(.inline)
    }
}
