//
//  SearchTkYutaiList.swift
//  iClickKabu
//
//  Created by Cho on 2020/09/30.
//

import Foundation

extension API {
    // 株主優待 情報取得（検索用）
    final class SearchTkYutaiList: ApiTelegram {
        
        var path:           String { "searchTkYutaiList.do" }
        var method:         Method { .post }
        var errorHandler:   API.ErrorHandler? { .telegram }
        
        struct Parameter: Encodable {
            var isImgOnly: String      // 優待画像有銘柄のみ表示フラグ
            var targetMonth: String    // 権利確定月
            var minLeastAmount: String // 優待獲得最低金額下限
            var maxLeastAmount: String // 優待獲得最低金額上限
            var type: String           // 優待内容
            var minYield: String       // 優待利回下限
            var maxYield: String       // 優待利回上限
            var dot: String            // 表示順
            var adt: String            // 昇順・降順
            var pgn: String            // ページ
        }
    }
}
