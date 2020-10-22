//
//  API+StockOrderModify.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 注文変更
    final class StockOrderModify: ApiTelegram {
        
        var path:           String { "iclickkabu/modifyStockOrder.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var cmk: String        // 注文番号
            var trp: String        // 逆指値価格
            var snp: String        // 指値
            var nyf: String        // 成行
            var pic: String        // 取引暗証番号
            var kakuninKbn: String // 確認パラメータ
        }
    }
}
