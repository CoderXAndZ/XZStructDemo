//
//  API+ShikihoInfo.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 四季報取得
    final class ShikihoInfo: ApiTelegram {
        
        var path:           String { "iclickkabu/shikihoInfo.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var skc: String        // 証券コード
        }
    }
}
