//
//  API+WatchListDelete.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // シート削除
    final class WatchListDelete: ApiTelegram {
        
        var path:           String { "iclickkabu/deleteWatchList.do }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var pfk: String  // ポートフォリオキー
        }
    }
}
