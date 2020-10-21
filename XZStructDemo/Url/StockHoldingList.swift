//
//  StockHoldingList.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 保有株一覧
    final class StockHoldingList: ApiTelegram {
        
        var path:           String { "stockGenPositionList.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var skc: String        // 証券コード
            var dot: String        // 表示順
            var adt: String        // 昇順／降順
            var pgn: String        // ページ番号
            var kzt: String        // 口座区分
        }
    }
}
