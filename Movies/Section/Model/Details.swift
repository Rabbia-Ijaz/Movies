//
//  Details.swift
//  Movies
//
//  Created by Rabbia Ijaz on 25/08/2023.
//

import Foundation
class Genres: NSObject, Codable {
   
    var id: Int?
    var name: String?

    enum Codingkeys: String, CodingKey{
        case id, name
    }
    
    override init() {
        super.init()
       
        id = 0
        name = ""
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: Codingkeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id) ?? 0
        name = try values.decodeIfPresent(String.self, forKey: .name) ?? ""
    }
}

class ProductionCompanies: NSObject, Codable {
   
    var id: Int?
    var name: String?
    var logo_path: String?
    var origin_country: String?

    enum Codingkeys: String, CodingKey{
        case id, name, logo_path, origin_country
    }
    
    override init() {
        super.init()
       
        id = 0
        name = ""
        logo_path = ""
        origin_country = ""
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: Codingkeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id) ?? 0
        name = try values.decodeIfPresent(String.self, forKey: .name) ?? ""
        logo_path = try values.decodeIfPresent(String.self, forKey: .logo_path) ?? ""
        origin_country = try values.decodeIfPresent(String.self, forKey: .origin_country) ?? ""
    }
}

class SpokenLanguages: NSObject, Codable {
   
    var name: String?
    var english_name: String?


    enum Codingkeys: String, CodingKey{
        case english_name, name
    }
    
    override init() {
        super.init()
       
        english_name = ""
        name = ""
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: Codingkeys.self)
        english_name = try values.decodeIfPresent(String.self, forKey: .english_name) ?? ""
        name = try values.decodeIfPresent(String.self, forKey: .name) ?? ""
    }
}
