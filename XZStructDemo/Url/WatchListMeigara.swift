//
//  WatchListMeigara.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // ウォッチリスト登録リスト
    final class WatchListMeigara: ApiTelegram {
        
        var path:           String { "watchListMeigara.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var pfk: String    // ポートフォリオキー
        }
    }
}
