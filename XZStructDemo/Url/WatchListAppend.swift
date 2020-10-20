//
//  WatchListAppend.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    
    final class WatchListAppend: ApiTelegram {
        
        var path:           String { "appendWatchListMeigara.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var pfk: String    // ポートフォリオキー
            var skc: String    // 証券コード
            var sjt: String    // 市場区分
        }
    }
}
