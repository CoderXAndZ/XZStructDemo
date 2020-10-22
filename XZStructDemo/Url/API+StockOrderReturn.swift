//
//  API+StockOrderReturn.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 建玉指定（返済・現渡・現引）注文
    final class StockOrderReturn: ApiTelegram {
        
        var path:           String { "iclickkabu/returnStockOrder.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var tga: [Tga]
            struct Tga: Encodable {
                var tgk: String    // 建玉キー
                var hsn: String    // 返済数量
            }
            var tht: String        // 取引区分
            var tct: String        // 注文タイプ
            var trp: String        // 逆指値価格
            var trv: String        // 逆指値価格条件
            var snp: String        // 指値
            var nyf: String        // 成行
            var skt: String        // 執行区分
            var dat: String        // 有効期間
            var dad: String        // 有効期間日付
            var pic: String        // 取引暗証番号
            var kakuninKbn: String // 確認パラメータ
        }
    }
}
