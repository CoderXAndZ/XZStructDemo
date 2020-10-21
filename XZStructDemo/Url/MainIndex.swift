//
//  MainIndex.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 主要指標
    final class MainIndex: ApiTelegram {
        
        var path:           String { "marketSummary.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var msk: String        // マーケットサマリーキー
        }
    }
}
