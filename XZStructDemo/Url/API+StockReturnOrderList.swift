//
//  API+StockReturnOrderList.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 建玉返済注文一覧取得
    final class StockReturnOrderList: ApiTelegram {
        
        var path:           String { "iclickkabu/returnStockOrderPositionList.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var skc: String        // 証券コード
            var bbt: String        // 売買区分
            var sjt: String        // 市場コード
            var syt: String        // 期限 信用区分
            var kzt: String        // 口座区分
        }
    }
}
