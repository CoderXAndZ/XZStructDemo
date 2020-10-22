//
//  API+StockOrderHistoryList.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 注文履歴
    final class StockOrderHistoryList: ApiTelegram {
        
        var path:           String { "iclickkabu/stockOrderHistoryList.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var dst: String        // 有効期限
            var stt: String        // 状態
            var skc: String        // 証券コード
            var dot: String        // 表示順
            var adt: String        // 昇順／降順
            var pgn: String        // ページ番号
        }
    }
}
