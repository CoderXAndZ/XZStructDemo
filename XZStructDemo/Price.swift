//
//  Price.swift
//  XZStructDemo
//
//  Created by admin on 2020/10/13.
//  Copyright © 2020 XZ. All rights reserved.
//

import Foundation

struct Price: Codable {
    let priceInfo: [PriceInfo]
    
    enum CodingKeys: String, CodingKey {
        case price
    }
    
    enum PriceCodingKeys: String, CodingKey {
        case info
    }
    
    init(priceInfo: [PriceInfo]) {
        self.priceInfo = priceInfo
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let keyedContainer = try container.nestedContainer(keyedBy: PriceCodingKeys.self, forKey: .price)
        var unkeyedContainer = try keyedContainer.nestedUnkeyedContainer(forKey: .info)
        var priceInfo = [PriceInfo]()
        while !unkeyedContainer.isAtEnd {
            let price = try unkeyedContainer.decode(PriceInfo.self)
            priceInfo.append(price)
        }
        self.init(priceInfo: priceInfo)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        var keyedContainer = container.nestedContainer(keyedBy: PriceCodingKeys.self, forKey: .price)
        var unkeyedContainer = keyedContainer.nestedUnkeyedContainer(forKey: .info)
        try priceInfo.forEach { (item) in
            try unkeyedContainer.encode(item)
        }
    }
}

struct PriceInfo: Codable {
    var skt: String
    var step: [String]
    
//    enum CodingKeys: String, CodingKey {
//        case skt
//        case step
//    }
}
