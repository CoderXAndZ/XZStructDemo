//
//  API+WatchListUpsert.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // シートウォッチリスト登録
    final class WatchListUpsert: ApiTelegram {

        var path:           String { "iclickkabu/upsertWatchList.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var pfk:  String               // ポートフォリオキー
            var pfms: String               // シート名称
            var mga:  [Mga]
            
            struct Mga: Encodable {
                var skc: String             // 証券コード
                var sjt: String             // 市場区分
                var sry: Int                // 数量
                var snp: Float              // 指値
                var uwd: String             // 受渡日
                var tht: String             // 取引区分
            }
        }
    }
}
