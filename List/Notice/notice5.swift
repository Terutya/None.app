//
//  notice5.swift
//  marasy app
//
//  Created by 山川裕輝 on 2024/10/19.
//

import SwiftUI

struct notice5: View{
    var body: some View {
        Text("微妙な調整を行いました")
            .font(.title)
            .padding()
        Text("お知らせにバージョンの更新を廃止し、バージョン情報でバージョンの更新を確認できるように調整しました。\nまた、お知らせは更新があれば随時更新します。")
            .font(.system(size: 23))
            .padding()
        Text("アカウントの作成、情報を削除いたしました。アカウントにつきましては、代替案を検討中です。しばらくを待ちください。")
            .font(.system(size: 23))
            .padding()
    }
}

#Preview {
    notice5()
}
