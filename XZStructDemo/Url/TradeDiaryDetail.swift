//
//  TradeDiaryDetail.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // トレード日記詳細取得
    final class TradeDiaryDetail: ApiTelegram {
        
        var path:           String { "tradeDiaryImage.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var tdt: String        // 取引日
        }
    }
}
