//
//  API+MainIndexImage.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 主要指標（画像取得）
    final class MainIndexImage: ApiTelegram {
        
        var path:           String { "iclickkabu/marketSummaryImage.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var msk: String        // マーケットサマリーキー
        }
    }
}
