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
        
        let unkeyedContainerPopular = try keyedContainer.nestedUnkeyedContainer(forKey: .popular)
        
        
    }
    
    func encode(to encoder: Encoder) throws {
        <#code#>
    }
    
    struct Rimawari {
        var value: [String]
    }
    
    struct TopFourPopular {
        var value: [String]
    }
    
    struct Popular {
        var value: [String]
    }
}
