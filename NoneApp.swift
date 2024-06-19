import SwiftUI

@main
struct NoneApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    //スプラッシュ画面の表示を制御にするための状態変数
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
    // ContentViewからスプラッシュ画面の表示を制御するためのバインディング
    @Binding var showSplash: Bool
    //画像のアニメーションを制御するための状態変数
    @State private var animate = false
    //画像の色変更アニメーションを制御するための状態変数
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
            
            Text("marasy App")
                .font(.custom("HelveticaNeue-Bold", size: 30))
                .bold()
                .opacity(animate ? 1 : 0)    //animateの状態に応じて透明度の変更
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
