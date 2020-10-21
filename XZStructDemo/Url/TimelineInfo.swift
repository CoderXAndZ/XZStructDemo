//
//  TimelineInfo.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 時系列取得
    final class TimelineInfo: ApiTelegram {
        
        var path:           String { "yearlyHighLow.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var skc: String    // 証券コード
            var sjt: String    // 市場区分
        }
    }
}
