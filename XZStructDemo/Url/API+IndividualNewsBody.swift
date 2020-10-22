//
//  API+IndividualNewsBody.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation
import RxSwift

extension API {
    // ニュース詳細取得（個別）
    final class IndividualNewsBody: ApiTelegram {
        
        var path:           String { "iclickkabu/individualNewsBody.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var hid: String    // ヘッドラインID
        }
        
        static func excute(_ parameter: Parameter) -> Observable<API.Telegram> {
            return observable(parameter: parameter)
        }
    }
}
