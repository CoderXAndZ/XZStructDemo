//
//  API+YutaiCountByMonthInfo.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation
import RxSwift

extension API {
    // 株主優待　権利月別銘柄件数
    final class YutaiCountByMonthInfo: ApiTelegram {
        
        var path:           String { "iclickkabu/getTkYutaiCountByMonth.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        static func excute(_ parameter: Parameter) -> Observable<API.Telegram> {
            return observable(parameter: parameter)
        }
    }
}
