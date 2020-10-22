//
//  API+BoardInfo.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation
import RxSwift

extension API {
    // 板情報更新情報取得
    final class BoardInfo: ApiTelegram {
        
        var path:           String { "od/iclickkabu/m/ita" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var a:   String      // 認証キー
            var skt: String      // 証券コード+市場区分
        }
        
        static func excute(_ parameter: Parameter) -> Observable<API.Telegram> {
            return observable(parameter: parameter)
        }
    }
}
