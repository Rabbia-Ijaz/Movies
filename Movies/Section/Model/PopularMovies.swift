//
//  PopularMovies.swift
//  Movies
//
//  Created by Rabbia Ijaz on 25/08/2023.
//

import Foundation
class PopularMovies: NSObject, Codable {
    var results: [MovieDetail]?
    var page: Int?
    var total_results: Int?
    var total_pages: Int?
    
    enum Codingkeys: String, CodingKey{
        case results, page, total_results, total_pages
    }
    
    override init() {
        super.init()
        results = []
        page = 0
        total_results = 0
        total_pages = 0
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: Codingkeys.self)
        
        results = try values.decodeIfPresent([MovieDetail].self, forKey: .results) ?? []
        page = try values.decodeIfPresent(Int.self, forKey: .page) ?? 0
        total_results = try values.decodeIfPresent(Int.self, forKey: .total_results) ?? 0
        total_pages = try values.decodeIfPresent(Int.self, forKey: .total_pages) ?? 0
    }
    
}
