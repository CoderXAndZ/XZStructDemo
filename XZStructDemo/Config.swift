//
//  Config.swift
//  XZStructDemo
//
//  Created by XZ on 2020/10/12.
//  Copyright © 2020 XZ. All rights reserved.
//

import Foundation

struct Config: Codable {
    
    var major:          String
    var minor:          String
    var revision:       String
    var availableTos:    Date
    
    var newsInfo:       [NewsInfo]

    enum CodingKeys: String, CodingKey {
        case major
        case minor
        case revision
        case availableTos = "availableTo"
        case news
    }
    
    
    // 这里要指定news嵌套的数据中的映射规则
    enum NewsCodingKeys: String, CodingKey {
        case newsInfo = "info"
    }
    
    init(major: String, minor: String, revision: String, availableTos: Date, newsInfo: [NewsInfo]) {
        self.major = major
        self.minor = minor
        self.revision = revision
        self.availableTos = availableTos
        self.newsInfo = newsInfo
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let major = try container.decode(String.self, forKey: .major)
        let minor = try container.decode(String.self, forKey: .minor)
        let revision = try container.decode(String.self, forKey: .revision)
        
        let availableTos = Date()
        
//        let dateString = try container.decode(Date.self, forKey: .availableTos)
//        let fomatter = DateFormatter()
//        fomatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
//        let availableTo = fomatter.date(from: dateString)!
        
        // 创建一个对字典处理用的容器 (KeyedDecodingContainer)，并指定json中key和属性名的规则
        let keyedContainer = try container.nestedContainer(keyedBy: NewsCodingKeys.self, forKey: .news)
        var unkeyedContainer = try keyedContainer.nestedUnkeyedContainer(forKey: .newsInfo)
        var newsInfos = [NewsInfo]()
        while !unkeyedContainer.isAtEnd {
            let news = try unkeyedContainer.decode(NewsInfo.self).self
            newsInfos.append(news)
        }
        self.init(major: major, minor: minor, revision: revision, availableTos: availableTos, newsInfo: newsInfos)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(major, forKey: .major)
        try container.encode(minor, forKey: .minor)
        try container.encode(revision, forKey: .revision)
        try container.encode(availableTos, forKey: .availableTos)
        
        // 创建一个对字典处理用的容器 (KeyedEncodingContainer)，并指定json中key和属性名的规则
        var keyedContainer = container.nestedContainer(keyedBy: NewsCodingKeys.self, forKey: .news)
//        try keyedContainer.encode(grossScore, forKey: .grossScore)
        var unkeyedContainer = keyedContainer.nestedUnkeyedContainer(forKey: .newsInfo)
        try newsInfo.forEach {item in
            try unkeyedContainer.encode(item)
        }
    }
        
    struct Time {
        var autoReloadTime: String
        var retrytime:      String
        var dataPeriodTime: String
    }
    
    struct Retry {
        var retrycount: Int
        var messageout: Int
    }
    
    struct Url {
        var helpURL: String
        var regulationURL: String
        var privacyPolicyURL: String
        var corporateURL: String
        var openingOfAccountURL: String
        var checkBannerImage: String
        struct menuBannerURL {
            var bannerImageURL: String
            var bannerImageLinkTextURL: String
        }
//        var menuBannerURL: String
        var agreementInfoURL: String
    }
    
    struct News {
        var code: String
        var name: String
        var detail: String
    }
    
    struct Price {
        var skt: Int
        var step: [String]
    }
    
    struct Smalltickprice1 {
        
    }
    
    struct NewsInfo: Codable {
        var code: Int
        var name: String
        var detail: String
     
        enum CodingKeys: String, CodingKey {
            case code
            case name
            case detail
        }
    }
}




