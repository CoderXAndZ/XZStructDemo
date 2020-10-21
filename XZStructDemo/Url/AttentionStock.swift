//
//  AttentionStock.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // ログイン
    final class AttentionStock: ApiTelegram {
        
        var path:           String { "attentionStock.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var userName: String    // ユーザーID
            var password: String    // パスワード
            var form    = "Login"   // Submit名
            var s       = "01"      // サービスID
            var p       = "75"      // ページID
            
            private enum CodingKeys: String, CodingKey {
                case
                userName = "j_username",
                password = "j_password",
                form = "LoginForm",
                s, p
            }
        }
    }
}
