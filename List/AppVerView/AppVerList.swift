//
//  s.swift
//  marasy app
//
//  Created by 山川裕輝 on 2024/10/19.
//

import SwiftUI

struct AppVerListView: View{
    var body: some View {
        List {
            NavigationLink(destination: AppVerView4()){
                Text("アプリver 2.2.00について")
            }
            NavigationLink(destination: AppVerView3()){
                Text("アプリver 2.1.00について")
            }
            NavigationLink(destination: AppVerView2()){
                Text("アプリver 1.2.00について")
            }
            NavigationLink(destination: AppVerView1()){
                Text("アプリver 1.1.00について")
            }
        }
    }
}


#Preview{
    AppVerListView()
}
