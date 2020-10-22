//
//  API+YakjoHistorySummary.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation
import RxSwift

extension API {
    // 約定履歴(銘柄名でまとめ)
    final class YakjoHistorySummary: ApiTelegram {
        
        var path:           String { "iclickkabu/stockExecutionHistorySummaryList.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var dat: String        // 期間
            var dsf: Date          // 期間指定From
            var dst: Date          // 期間指定To
            var skc: String        // 証券コード
            var dot: String        // 表示順
            var adt: String        // 昇順／降順
            var pgn: String        // ページ番号
        }
        
        static func excute(_ parameter: Parameter) -> Observable<API.Telegram> {
            return observable(parameter: parameter)
        }
    }
}
