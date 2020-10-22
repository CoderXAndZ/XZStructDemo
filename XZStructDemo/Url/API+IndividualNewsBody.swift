//
//  API+IndividualNewsBody.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // ニュース詳細取得（個別）
    final class IndividualNewsBody: ApiTelegram {
        
        var path:           String { "individualNewsBody.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var hid: String    // ヘッドラインID
        }
    }
}
