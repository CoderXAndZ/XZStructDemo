//
//  API+StockCommonInfoUpdate.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation
import RxSwift

extension API {
    // 銘柄情報共通更新情報取得
    final class StockCommonInfoUpdate: ApiTelegram {
        
        var path:           String { "iclickkabu/m/stockCommonInfo" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var a: String      // 認証キー
            var skc: String    // 証券コード
            var sjt: String    // 市場コード
        }
        
        static func excute(_ parameter: Parameter) -> Observable<API.Telegram> {
            return observable(parameter: parameter)
        }
    }
}
