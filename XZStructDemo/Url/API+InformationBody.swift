//
//  API+InformationBody.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 全体向けお知らせ詳細取得
    final class InformationBody: ApiTelegram {
        
        var path:           String { "iclickkabu/informationBody.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var seq: String        // シーケンス番号
        }
    }
}
