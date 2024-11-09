import SwiftUI

@main
struct MarasyApp: App {
    @StateObject var fontManager = FontManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(fontManager)
        }
    }
}

struct ContentView: View {
    @State private var showSplash = true
    
    var body: some View {
        Group {
            if showSplash {
                SplashView(showSplash: $showSplash)
            } else {
                HomeView()
            }
        }
        
    }
}

struct SplashView: View {
    @Binding var showSplash: Bool
    @State private var animate = false
    @State private var colorchange = false
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("piano")
                .resizable()
                .aspectRatio(contentMode: .fit)    //フレーム内に収まるようにアスペクト比を維持
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 20))    //画像を角丸の長方形にクリップ
                .scaleEffect(animate ? 1.5 : 1)    //animateの状態に多じて画像のスケールを変更
                .foregroundColor(.blue)
                .onAppear {
                    //ビューが表示されたときにアニメーションを開始
                    withAnimation(Animation.easeInOut(duration: 1).repeatCount(3, autoreverses: true)) {
                        animate = true
                    }
                }
            //状態変数が変化すると、1秒間のイーズインアウトアニメーションを3回繰り返し
                .animation(.easeInOut(duration: 1).repeatCount(3, autoreverses: true), value: animate)
                .animation(.easeInOut(duration: 1).repeatCount(3, autoreverses: true), value: colorchange)
            
            Spacer()
            
            Text("まらしぃあぷり")
                .font(.custom("HelveticaNeue-Bold", size: 30))
                .bold()
                .opacity(animate ? 2 : 2)    //animateの状態に応じて透明度の変更
                .animation(.easeIn(duration: 1).delay(3), value: animate)    //透明度の変更をアニメーション
                .onAppear {
                    //4秒の遅延後にHomeViewに遷移
                    DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                        withAnimation {
                            showSplash = false
                        }
                    }
                }
            Spacer()
        }
    }
}

struct HomeView: View {
    var body: some View {
        ContentView1()
    }
}

#Preview {
    ContentView()
}
