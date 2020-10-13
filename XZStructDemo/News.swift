//
//  News.swift
//  XZStructDemo
//
//  Created by XZ on 2020/10/12.
//  Copyright © 2020 XZ. All rights reserved.
//

import Foundation

struct News: Codable {
    
    let newsInfo: [NewsInfo]
    
    enum CodingKeys: String, CodingKey {
        case news
    }
    
    // 这里要指定news嵌套的数据中的映射规则
    enum NewsCodingKeys: String, CodingKey {
        case info
    }
    
    init(newsInfo: [NewsInfo]) {
        self.newsInfo = newsInfo
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        // 创建一个对字典处理用的容器 (KeyedDecodingContainer)，并指定json中key和属性名的规则
        let keyedContainer = try container.nestedContainer(keyedBy: NewsCodingKeys.self, forKey: .news)
        var unkeyedContainer = try keyedContainer.nestedUnkeyedContainer(forKey: .info)
        var newsInfos = [NewsInfo]()
        while !unkeyedContainer.isAtEnd {
            let news = try unkeyedContainer.decode(NewsInfo.self)
            newsInfos.append(news)
        }
        self.init(newsInfo: newsInfos)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        // 创建一个对字典处理用的容器 (KeyedEncodingContainer)，并指定json中key和属性名的规则
        var keyedContainer = container.nestedContainer(keyedBy: NewsCodingKeys.self, forKey: .news)
        var unkeyedContainer = keyedContainer.nestedUnkeyedContainer(forKey: .info)
        try newsInfo.forEach {item in
            try unkeyedContainer.encode(item)
        }
    }

    struct NewsInfo: Codable {
        let code: String
        let name: String
        let detail: String
    }

}
