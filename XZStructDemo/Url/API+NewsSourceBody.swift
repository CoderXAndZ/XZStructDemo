//
//  API+NewsSourceBody.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // ニュース詳細取得（全体）
    final class NewsSourceBody: ApiTelegram {
        
        var path:           String { "newsSourceBody.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var hid: String    // ヘッドラインID
        }
    }
}
