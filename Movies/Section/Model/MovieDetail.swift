//
//  MovieDetail.swift
//  Movies
//
//  Created by Rabbia Ijaz on 25/08/2023.
//

import Foundation
class MovieDetail: NSObject, Codable {
    var adult: Bool?
    var backdrop_path: String?
    var genre_ids: [Int]?
    var id: Int?
    var original_language: String?
    var original_title: String?
    var overview: String?
    var popularity: Double?
    var poster_path: String?
    var release_date: String?
    var title: String?
    var video: Bool?
    var vote_average: Double?
    var vote_count: Int?

    enum Codingkeys: String, CodingKey{
        case adult, backdrop_path, genre_ids, id, original_language, original_title, overview, popularity, poster_path, release_date, title, video, vote_average, vote_count
    }
    
    override init() {
        super.init()
        adult = false
        backdrop_path = ""
        genre_ids = []
        id = 0
        original_language = ""
        original_title = ""
        overview = ""
        popularity = 0.0
        poster_path = ""
        release_date = ""
        title = ""
        video = false
        vote_average = 0.0
        vote_count = 0
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: Codingkeys.self)
        
        adult = try values.decodeIfPresent(Bool.self, forKey: .adult) ?? false
        backdrop_path = try values.decodeIfPresent(String.self, forKey: .backdrop_path) ?? ""
        genre_ids = try values.decodeIfPresent([Int].self, forKey: .genre_ids) ?? []
        id = try values.decodeIfPresent(Int.self, forKey: .id) ?? 0
        original_language = try values.decodeIfPresent(String.self, forKey: .original_language) ?? ""
        original_title = try values.decodeIfPresent(String.self, forKey: .original_title) ?? ""
        overview = try values.decodeIfPresent(String.self, forKey: .overview) ?? ""
        popularity = try values.decodeIfPresent(Double.self, forKey: .popularity) ?? 0.0
        poster_path = try values.decodeIfPresent(String.self, forKey: .poster_path) ?? ""
        release_date = try values.decodeIfPresent(String.self, forKey: .release_date) ?? ""
        title = try values.decodeIfPresent(String.self, forKey: .title) ?? ""
        video = try values.decodeIfPresent(Bool.self, forKey: .video) ?? false
        vote_average = try values.decodeIfPresent(Double.self, forKey: .vote_average) ?? 0.0
        vote_count = try values.decodeIfPresent(Int.self, forKey: .vote_count) ?? 0
    }
}
