//
//  PowerAmountUserSheet.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 余力推移取得
    final class PowerAmountUserSheet: ApiTelegram {
        
        var path:           String { "powerAmountUserSheet.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
    
    }
}
