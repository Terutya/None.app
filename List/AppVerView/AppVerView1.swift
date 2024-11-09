//
//  AppVerView3 2.swift
//  marasy app
//
//  Created by 山川裕輝 on 2024/10/21.
//

import SwiftUI

struct AppVerView1: View {
    var body: some View {
        Text("アプリver 1.1.00について")
            .font(.title)
            .padding()
        Text("・製作者のSNSを追加しました。")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        Text("・サイトの追加しました。")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        Text("・お知らせの追加をしました。")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
    }
}

#Preview {
    AppVerView1()
}
