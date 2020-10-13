//
//  ViewController.swift
//  XZStructDemo
//
//  Created by XZ on 2020/10/12.
//  Copyright © 2020 XZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        configFuncs()
//        newfuncs()
        pricefuncs()
    }

    func encode<T>(of model: T) throws where T: Codable {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        let encodedData = try encoder.encode(model)
        print(String(data: encodedData, encoding: .utf8)!)
    }
    func decode<T>(of jsonString: String, type: T.Type) throws -> T where T: Codable {
        let data = jsonString.data(using: .utf8)!
        let decoder = JSONDecoder()
        let model = try! decoder.decode(T.self, from: data)
        return model
    }
}

extension ViewController {
    // MARK: ----- price的功能
    func pricefuncs() {
        let res = """
         {"price": {
               "info": [
                 {
                   "skt": "001",
                   "step": [
                     "3000|1",
                     "5000|5",
                     "30000|10",
                     "50000|50",
                     "300000|100",
                     "500000|500",
                     "3000000|1000",
                     "5000000|5000",
                     "30000000|10000",
                     "50000000|50000",
                     "999999999|100000"
                   ]
                 },
                 {
                   "skt": "002",
                   "step": [
                     "3000|1",
                     "5000|5",
                     "30000|10",
                     "50000|50",
                     "300000|100",
                     "500000|500",
                     "3000000|1000",
                     "5000000|5000",
                     "30000000|10000",
                     "50000000|50000",
                     "999999999|100000"
                   ]
                 },
                 {
                   "skt": "006",
                   "step": [
                     "3000|1",
                     "5000|5",
                     "30000|10",
                     "50000|50",
                     "300000|100",
                     "500000|500",
                     "3000000|1000",
                     "5000000|5000",
                     "30000000|10000",
                     "50000000|50000",
                     "999999999|100000"
                   ]
                 }
               ]
             }}
        """
        let response = try! decode(of: res, type: Price.self)
        dump(response)
        try! encode(of: response)
        print("---------response.priceInfo:", response.priceInfo)
    }
    // MARK: ----- news的功能
    func newfuncs() {
        let res = """
         {"news": {
          "info": [
            {
              "code": "99",
              "name": "すべて",
              "detail": ",すべて"
            },
            {
              "code": "0001",
              "name": "ニュース",
              "detail": ",すべて|11,ショートライブ|13,商品|15,セクター|16,概況|17,個別|18,IPO|19,株先OP|20,債券|21,テーマ"
            },
            {
              "code": "0002",
              "name": "適時開示",
              "detail": ",すべて|1,決算短信(連結非作成会社用)|2,第2 四半期決算短信（連結非作成会社用）|3,決算短信（連結作成会社用）|4,第2 四半期決算短信（連結作成会社用）|5,業績予想の修正等|6,配当予想等|8,株式・新株予約権の発行|9,自己株式の取得|13,開示資料の追加・訂正|14,PR 情報等|16,第1 四半期決算短信（連結作成会社用）|17,第1 四半期決算短信（連結非作成会社用）|18,第3 四半期決算短信（連結作成会社用）|19,第3 四半期決算短信（連結非作成会社用）|20,その他四半期決算短信（連結作成会社用）|21,その他四半期決算短信（連結非作成会社用）|24,数値データ追加|25,数値データ訂正|28,代表取締役又は代表執行役の異動|32,CG報告書（内国株式）|33,CG報告書（内国株式以外）|34,株主総会招集通知|0,その他"
            },
            {
              "code": "0004",
              "name": "EDINET",
              "detail": ",すべて|1,意見表明報告書|2,外国会社報告書|3,確認書|4,公開買付届出書 |5,公開買付報告書|6,四半期報告書|7,自己株券買付状況報告書（法２４条の６第１項に基づくもの）|8,親会社等状況報告書|9,対質問回答報告書|10,大量保有報告書|11,訂正発行登録書|12,訂正報告書|13,有価証券報告書|14,内部統制報告書|15,発行登録書|16,半期報告書|17,変更報告書|18,有価証券届出書|19,臨時報告書"
            },
            {
              "code": "0003",
              "name": "アナリストレポート",
              "detail": ",すべて|1,企業レポート|2,業界レポート|3,月次動向レポート|4,Q&Aコメント"
            }
          ]
        }}
        """
        
        let response = try! decode(of: res, type: News.self)
        dump(response)
        try! encode(of: response)
        print("---------response.newsInfo:", response.newsInfo)
    }
    
    // MARK: ----- config的功能
    func configFuncs() {
        let jsonPath = Bundle.main.path(forResource: "file", ofType: "txt")
        let data = NSData.init(contentsOfFile: jsonPath!)
        //        let json = try! JSONSerialization.jsonObject(with: data, options: [])
        let string = String(data: data! as Data, encoding: .utf8)
        
        //        let decoder = JSONDecoder()
        //        decoder.outputFormatting = .prettyPrinted
        
        let config = try! decode(of: string!, type: Config.self)
        
        //        let config = try! decoder.decode(Config.self, from: data! as Data)
        dump(config)
        try! encode(of: config)
    }
}
