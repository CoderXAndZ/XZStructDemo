//
//  Logout.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // ログアウト
    final class Logout: ApiTelegram {
        
        var path:           String { "logout" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var jsessionid: String        // セッションID
        }
    }
}
