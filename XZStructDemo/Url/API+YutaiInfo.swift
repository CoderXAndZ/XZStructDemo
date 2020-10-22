//
//  API+YutaiInfo.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 株主優待 情報取得
    final class YutaiInfo: ApiTelegram {
        
        var path:           String { "kabunushiYutaiInfo.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var skc: String        // 証券コード
        }
    }
}
