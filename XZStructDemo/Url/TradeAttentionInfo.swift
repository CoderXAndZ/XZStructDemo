//
//  TradeAttentionInfo.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    
    final class TradeAttentionInfo: ApiTelegram {
        
        var path:           String { "tradeAttentionInfo.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var skc: String    // 証券コード
            var sjt: String    // 市場区分
        }
    }
}
