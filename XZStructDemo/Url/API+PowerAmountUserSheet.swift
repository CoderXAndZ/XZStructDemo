//
//  API+PowerAmountUserSheet.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation
import RxSwift

extension API {
    // 余力推移取得
    final class PowerAmountUserSheet: ApiTelegram {
        
        var path:           String { "iclickkabu/powerAmountUserSheet.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
    
    }
}
