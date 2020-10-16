//struct Config: Decodable {
//    var major:              String
//    var minor:              String
//    var revision:           String
//    var availableTo:        Date
//    var time:               Time
//    var retry:              Retry
//    var url:                URL
//    var news:               [News]
//    var price:              [Price]
//    var smalltickprice1:    [Price]
//    var yuutai:             Yuutai
//
//    private enum CodingKeys: String, CodingKey {
//        case major, minor, revision, availableTo, time, retry, url, news, price, smalltickprice1, yuutai
//    }
//
//    private enum NestedKeys: String, CodingKey {
//        case info, search
//    }
//
//    init(from decoder: Decoder) throws {
//        let container   = try decoder.container(keyedBy: CodingKeys.self)
//        major           = try container.decode(String.self, forKey: .major)
//        minor           = try container.decode(String.self, forKey: .minor)
//        revision        = try container.decode(String.self, forKey: .revision)
//        availableTo     = try container.decode(Date.self, forKey: .availableTo)
//        time            = try container.decode(Time.self, forKey: .time)
//        retry           = try container.decode(Retry.self, forKey: .retry)
//        url             = try container.decode(URL.self, forKey: .url)
//        news            = try Self.decodeNestedUnkeyedContainer(container: container, key: .news, nestedKey: NestedKeys.info)
//        price           = try Self.decodeNestedUnkeyedContainer(container: container, key: .price, nestedKey: NestedKeys.info)
//        smalltickprice1 = try Self.decodeNestedUnkeyedContainer(container: container, key: .smalltickprice1, nestedKey: NestedKeys.info)
//        yuutai          = try Self.decodeNestedKeyedContainer(container: container, key: .yuutai, nestedKey: NestedKeys.search)
//    }
//
//    struct Time: Decodable {
//        var autoReloadTime: Int
//        var retrytime:      Int
//        var dataPeriodTime: Int
//    }
//
//    struct Retry: Decodable {
//        var retrycount:     Int
//        var messageout:     Int
//    }
//
//    struct URL: Decodable {
//        var helpURL:                String
//        var regulationURL:          String
//        var privacyPolicyURL:       String
//        var corporateURL:           String
//        var openingOfAccountURL:    String
//        var checkBannerImage:       String
//        var menuBannerURL:          MenuBannerURL
//        var agreementInfoURL:       String
//
//        struct MenuBannerURL: Decodable {
//            var bannerImageURL:         String
//            var bannerImageLinkTextURL: String
//        }
//    }
//
//    struct News: Decodable {
//        var code:   String
//        var name:   String
//        var detail: String
//    }
//
//    struct Price: Decodable {
//        var skt:    String
//        var step:   [String]
//    }
//
//    struct Yuutai: Decodable {
//        var rimawari:       [Double]
//        var topFourPopular: [String]
//        var popular:        [String]
//
//        private enum CodingKeys: String, CodingKey {
//            case rimawari, topFourPopular, popular
//        }
//
//        private enum NestedKeys: String, CodingKey {
//            case value
//        }
//
//        init(from decoder: Decoder) throws {
//            let container   = try decoder.container(keyedBy: CodingKeys.self)
//            topFourPopular  = try Self.decodeNestedUnkeyedContainer(container: container, key: .topFourPopular, nestedKey: NestedKeys.value)
//            popular         = try Self.decodeNestedUnkeyedContainer(container: container, key: .popular, nestedKey: NestedKeys.value)
//
//            let rimawariString: [String] = try Self.decodeNestedUnkeyedContainer(container: container, key: .rimawari, nestedKey: NestedKeys.value)
//            rimawari = rimawariString.compactMap{ Double($0) }
//        }
//    }
//}
//
//// 去除中间阶层
//extension Decodable {
//
//    static func decodeNestedUnkeyedContainer<Key: CodingKey, NestedKey: CodingKey, T: Decodable>(container topContainer: KeyedDecodingContainer<Key>, key: Key, nestedKey: NestedKey) throws -> [T] {
//        let container = try topContainer.nestedContainer(keyedBy: NestedKey.self, forKey: key)
//        var subContainer = try container.nestedUnkeyedContainer(forKey: nestedKey)
//        var array = [T]()
//        while !subContainer.isAtEnd {
//            let value = try subContainer.decode(T.self)
//            array.append(value)
//        }
//        return array
//    }
//
//    static func decodeNestedKeyedContainer<Key: CodingKey, NestedKey: CodingKey, T: Decodable>(container topContainer: KeyedDecodingContainer<Key>, key: Key, nestedKey: NestedKey) throws -> T {
//        let container = try topContainer.nestedContainer(keyedBy: NestedKey.self, forKey: key)
//        return try container.decode(T.self, forKey: nestedKey)
//    }
//}
//
//// 将json中的String类型转换为各种目标数据类型
//extension KeyedDecodingContainer  {
//
//    func decode(_ type: Int.Type, forKey key: Key) throws -> Int {
//        return try decode(type, forKey: key) {
//            Int($0)
//        }
//    }
//
//    func decode(_ type: Date.Type, forKey key: Key) throws -> Date {
//        return try decode(type, forKey: key) { stringValue in
//            let formatter = DateFormatter()
//            formatter.calendar = Calendar(identifier: .gregorian)
//            formatter.dateFormat = "yyyy-MM-dd HH:mm:ss ZZZZZ"
//            return formatter.date(from: stringValue)
//        }
//    }
//
//    private func decode<T: Decodable>(_ type: T.Type, forKey key: Key, conversion: @escaping (String) -> T?) throws -> T {
//        if let value = try? decode(T.self, forKey: key) {
//            return value
//        } else if let string = try? decode(String.self, forKey: key),
//            let value = conversion(string) {
//            return value
//        }
//        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Could not parse \(key.stringValue) to \(T.self)")
//        throw DecodingError.dataCorrupted(context)
//    }
//}
