//
//  API+MessageList.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 個人向けお知らせ一覧情報取得
    final class MessageList: ApiTelegram {
        
        var path:           String { "iclickkabu/messageList.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
    }
}
