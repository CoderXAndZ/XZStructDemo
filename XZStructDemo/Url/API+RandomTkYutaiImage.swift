//
//  API+RandomTkYutaiImage.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation
import RxSwift

extension API {
    // 株主優待 ランダム取得
    final class RandomTkYutaiImage: ApiTelegram {
        
        var path:           String { "iclickkabu/randomTkYutaiImage.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var cnt: String        // 取得件数
        }
        
        static func excute(_ parameter: Parameter) -> Observable<API.Telegram> {
            return observable(parameter: parameter)
        }
    }
}
