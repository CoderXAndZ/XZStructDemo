//
//  API+StockSearch.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 銘柄検索
    final class StockSearch: ApiTelegram {
        
        var path:           String { "stockSearch.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var kwd: String        // 銘柄名／銘柄コード／キーワード
            var kwf: String        // キーワード検索
            var mmf: String        // 複数市場上場
            var dot: String        // 表示順
            var adt: String        // 昇順／降順
            var pgn: String        // ページ番号
        }
    }
}
