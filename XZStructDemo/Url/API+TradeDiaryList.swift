//
//  API+TradeDiaryList.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // トレード日記一覧取得
    final class TradeDiaryList: ApiTelegram {
        
        var path:           String { "iclickkabu/imageServiceTop.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
    }
}
