//
//  API+StockOrderCancel.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 注文取消
    final class StockOrderCancel: ApiTelegram {
        
        var path:           String { "iclickkabu/cancelStockOrder.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var cmk: String        // 注文番号
            var pic: String        // 取引暗証番号
        }
    }
}
