//
//  API+StockTategyokSummrayList.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation
import RxSwift

extension API {
    // 建玉一覧(サマリー)
    final class StockTategyokSummrayList: ApiTelegram {
        
        var path:           String { "iclickkabu/stockTatePositionSummaryList.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var skc: String        // 証券コード
            var bbt: String        // 売買区分
            var syt: String        // 期限
            var kzt: String        // 口座区分
            var dot: String        // 表示順
            var adt: String        // 昇順／降順
            var pgn: String        // ページ番号
        }
        
        static func excute(_ parameter: Parameter) -> Observable<API.Telegram> {
            return observable(parameter: parameter)
        }
    }
}
