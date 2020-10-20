//
//  ChartInfoUpdateFiveMinute.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    
    final class ChartInfoUpdateFiveMinute: ApiTelegram {
        
        var path:           String { "mchart" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var a: String        // 認証キー
            var skt: String      // 証券コード+市場区分
            var fmt: String      // チャート形式
            var t: String        // 更新時刻
            var comp: String     // 比較銘柄コード
        }
    }
}
