//
//  API+MessageBody.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation
import RxSwift

extension API {
    // 個人向けお知らせ詳細取得
    final class MessageBody: ApiTelegram {
        
        var path:           String { "iclickkabu/messageBody.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var seq: String        // シーケンス番号
        }
        
        static func excute(_ parameter: Parameter) -> Observable<API.Telegram> {
            return observable(parameter: parameter)
        }
    }
}
