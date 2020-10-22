//
//  API+ChartInfoUpdate.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation
import RxSwift

extension API {
    // チャート更新情報取得
    final class ChartInfoUpdate: ApiTelegram {
        
        var path:           String { "od/iclickkabu/c/uchart" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var a: String        // 認証キー
            var skt: String      // 証券コード+市場区分
            var chart: String    // チャート種別
            var comp: String     // 比較銘柄コード
        }
        
        static func excute(_ parameter: Parameter) -> Observable<API.Telegram> {
            return observable(parameter: parameter)
        }
    }
}
