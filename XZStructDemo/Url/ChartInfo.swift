//
//  ChartInfo.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // チャート情報取得
    final class ChartInfo: ApiTelegram {
        
        var path:           String { "achart" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var a: String        // 認証キー
            var skt: String      // 証券コード+市場区分
            var chart: String    // チャート種別
            var comp: String     // 比較銘柄コード
        }
    }
}
