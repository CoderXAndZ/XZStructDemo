//
//  WatchListUpdate.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    
    final class WatchListUpdate: ApiTelegram {
        
        var path:           String { "ohlc" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var a: String       // 認証キー
            var skt: String     // 証券コード+市場区分
        }
    }
}
