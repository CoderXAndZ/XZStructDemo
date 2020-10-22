//
//  API+MarginStockSearch.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation
import RxSwift

extension API {
    // 一般信用売銘柄検索
    final class MarginStockSearch: ApiTelegram {
        
        var path:           String { "iclickkabu/ippanShinyoSearch.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var kwd: String        // 銘柄名／銘柄コード／キーワード
            var qis: String        // クイックサーチ
            var dat: String        // 返済期日
            var jcw: String        // 受注枠
            var mgc: String        // 銘柄カテゴリ
            var ykk: String        // 優待権利確定月
            var dot: String        // 表示順
            var adt: String        // 昇順／降順
            var pgn: String        // ページ番号
        }
        
        static func excute(_ parameter: Parameter) -> Observable<API.Telegram> {
            return observable(parameter: parameter)
        }
    }
}
