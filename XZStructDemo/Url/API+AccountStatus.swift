//
//  API+AccountStatus.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 口座状態
    final class AccountStatus: ApiTelegram {
        
        var path:           String { "iclickkabu/AccountStatus.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
    }
}
