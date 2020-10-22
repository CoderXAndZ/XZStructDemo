//
//  API+StockInfomation.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 銘柄インフォメーション
    final class StockInfomation: ApiTelegram {
        
        var path:           String { "iclickkabu/stockInformation.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var skc: String    // 証券コード
            var sjt: String    // 市場区分
        }
    }
}
