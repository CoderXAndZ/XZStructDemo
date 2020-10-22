//
//  API+Ranking.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // ランキング情報取得
    final class Ranking: ApiTelegram {
        
        var path:           String { "ranking" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var a: String          // 認証キー
            var key: String        // ランキング種別キー
            var qml: String        // 証券コードリスト
        }
    }
}
