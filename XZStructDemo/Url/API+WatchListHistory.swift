//
//  API+WatchListHistory.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 履歴シート登録リスト
    final class WatchListHistory: ApiTelegram {
        
        var path:           String { "historyWatchList.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var mga: [Mga]
            struct Mga: Encodable {
                var skt: String // 証券コード+市場区分
            }
        }
    }
}
