//
//  StockOrder.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 日中注文
    final class StockOrder: ApiTelegram {
        
        var path:           String { "stockOrder.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var skc: String        // 証券コード
            var tht: String        // 取引区分
            var tct: String        // 注文タイプ
            var bbt: String        // 売買区分
            var kzt: String        // 口座区分
            var sjt: String        // 市場区分
            var skt: String        // 執行区分
            var dat: String        // 有効期間
            var dad: String        // 有効期間日付
            var thn: String        // 取引数量
            var trp: String        // 逆指値価格
            var trv: String        // 逆指値価格条件
            var snp: String        // 指値
            var nyf: String        // 成行
            var pic: String        // 取引暗証番号
            var syt: String        // 信用区分
            var rpk: String        // 弁済区分
            var std: String        // 弁済日数
            var kakuninKbn: String // 確認パラメータ
        }
    }
}
