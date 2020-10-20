//
//  NewsSourceList.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    
    final class NewsSourceList: ApiTelegram {
        
        var path:           String { "newsSourceList.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var dat: String    // 検索期間
            var dsf: String    // 期間指定FROM
            var dst: String    // 期間指定TO
            var kwd: String    // キーワード
            var ret: String    // 情報種別（種別）
            var cat: String    // 情報種別（詳細）
            var dot: String    // 表示順
            var pge: String    // ページ番号
            var hid: String    // ヘッドラインID
        }
    }
}
