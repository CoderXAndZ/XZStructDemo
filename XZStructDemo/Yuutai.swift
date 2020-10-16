//
//  Yuutai.swift
//  XZStructDemo
//
//  Created by admin on 2020/10/13.
//  Copyright © 2020 XZ. All rights reserved.
//

import Foundation

struct Yuutai: Codable {
    let rimawariValue: [String]
    let topFourPopularValue: [String]
    let popularValue: [String]
    
    enum CodingKeys: String, CodingKey {
        case search
    }
    
    enum SearchCodingKeys: String, CodingKey {
        case rimawari
        case topFourPopular
        case popular
    }
    
    init(rimawariValue: [String], topFourPopularValue: [String], popularValue: [String]) {
        
        self.rimawariValue = rimawariValue
        self.topFourPopularValue = topFourPopularValue
        self.popularValue = popularValue
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let keyedContainer = try container.nestedContainer(keyedBy: SearchCodingKeys.self, forKey: .search)
        var unkeyedContainerRimawari = try keyedContainer.nestedUnkeyedContainer(forKey: .rimawari)
        var rimawariValue = [String]()
        while !unkeyedContainerRimawari.isAtEnd {
            let rimawari = try unkeyedContainerRimawari.decode(String.self)
            rimawariValue.append(rimawari)
        }
        
        var unkeyedContainerPopular = try keyedContainer.nestedUnkeyedContainer(forKey: .popular)
        var popularInfo = [String]()
        while !unkeyedContainerPopular.isAtEnd {
            let popular = try unkeyedContainerPopular.decode(String.self)
            popularInfo.append(popular)
        }
        
        var unkeyedContainerTopFourPopular = try keyedContainer.nestedUnkeyedContainer(forKey: .topFourPopular)
        var topFourPopularInfo = [String]()
        while !unkeyedContainerTopFourPopular.isAtEnd {
            let topFourPopular = try unkeyedContainerTopFourPopular.decode(String.self)
            topFourPopularInfo.append(topFourPopular)
        }
        
        self.init(rimawariValue: rimawariValue, topFourPopularValue: topFourPopularInfo, popularValue: popularInfo)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        var keyedContainer = container.nestedContainer(keyedBy: SearchCodingKeys.self, forKey: .search)
        var rimawariUnkeyedContainer = keyedContainer.nestedUnkeyedContainer(forKey: .rimawari)
        try rimawariValue.forEach { (item) in
            try rimawariUnkeyedContainer.encode(item)
        }
        
        var topFourPopularValueUnkeyedContainer = keyedContainer.nestedUnkeyedContainer(forKey: .topFourPopular)
        try topFourPopularValue.forEach { (item) in
            try topFourPopularValueUnkeyedContainer.encode(item)
        }
        
        var popularValueUnkeyedContainer = keyedContainer.nestedUnkeyedContainer(forKey: .popular)
        try popularValue.forEach { (item) in
            try popularValueUnkeyedContainer.encode(item)
        }
    }
    
//    struct Rimawari {
//        var value: [String]
//    }
//
//    struct TopFourPopular {
//        var value: [String]
//    }
//
//    struct Popular {
//        var value: [String]
//    }
}
