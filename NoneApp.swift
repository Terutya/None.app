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
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .scaleEffect(animate ? 1.5 : 1)
                .foregroundColor(.blue)
                .onAppear {
                    withAnimation(Animation.easeInOut(duration: 1).repeatCount(3, autoreverses: true)) {
                        animate = true
                    }
                }
                .animation(.easeInOut(duration: 1).repeatCount(3, autoreverses: true), value: animate)
                .animation(.easeInOut(duration: 1).repeatCount(3, autoreverses: true), value: colorchange)

            Spacer()
            
            Text("marasy App")
                .font(.custom("HelveticaNeue-Bold", size: 25))
                .bold()
                .opacity(animate ? 1 : 0)
                .animation(.easeIn(duration: 1).delay(3), value: animate)
                .onAppear {
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
