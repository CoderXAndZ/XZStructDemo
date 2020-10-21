//
//  AgreementInfo.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // ご確認事項確認
    final class AgreementInfo: ApiTelegram {
        
        var path:           String { "agreementInfo.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }

    }
}
