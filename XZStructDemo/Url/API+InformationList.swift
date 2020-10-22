//
//  API+InformationList.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 全体向けお知らせ一覧情報取得
    final class InformationList: ApiTelegram {
        
        var path:           String { "informationList.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
    }
}
