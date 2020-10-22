//
//  API+IndividualNewsList.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation
import RxSwift

extension API {
    // ニュース一覧取得（個別）
    final class IndividualNewsList: ApiTelegram {
        
        var path:           String { "iclickkabu/individualNewsList.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var skc: String    // 証券コード
            var sjt: String    // 市場区分
            var dat: String    // 検索期間
            var dsf: Date      // 期間指定FROM
            var dst: Date      // 期間指定TO
            var kwd: String    // キーワード
            var ret: String    // 情報種別（種別）
            var cat: String    // 情報種別（詳細）
            var dot: String    // 表示順
            var pge: String    // ページ番号
            var hid: String    // ヘッドラインID
        }
        
        static func excute(_ parameter: Parameter) -> Observable<API.Telegram> {
            return observable(parameter: parameter)
        }
    }
}
