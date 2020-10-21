//
//  AccountStateInfo.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 口座状況情報取得
    final class AccountStateInfo: ApiTelegram {
        
        var path:           String { "powerAmount.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
    }
}
