//
//  AppVerView2.swift
//  marasy app
//
//  Created by 山川裕輝 on 2024/10/21.
//

import SwiftUI

struct AppVerView4: View{
    var body: some View{
        Text("アプリver 2.2.00について \n10/21更新")
            .font(.title)
            .padding()
        
        Text("・アプリのバージョンを一覧で見れるようにしました。")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        Text("・サイトの追加をしました")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        Text("・マイアカウントの作成、情報を削除しました。")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        Text("・お知らせの追加をしました。")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()

    }
}
#Preview {
    AppVerView4()
}
