//
//  API+WatchListSheet.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // シート登録リスト
    final class WatchListSheet: ApiTelegram {
        
        var path:           String { "watchListSheet.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
    }
}
