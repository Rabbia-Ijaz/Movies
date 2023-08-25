//
//  MovieDetails.swift
//  Movies
//
//  Created by Rabbia Ijaz on 25/08/2023.
//

import Foundation
class MovieDetails: NSObject, Codable {
   
    var adult: Bool?
    var backdrop_path: String?
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
    var tagline: String?
    var status: String?
    var spoken_languages: [SpokenLanguages]?
    var revenue: Int?
    var runtime: Int?
    var homepage: String?
    var imdb_id: String?
    var budget: Int?
    var production_companies: [ProductionCompanies]?
    var genres: [Genres]?
    
    enum CodingKeys: String, CodingKey {
        case adult, backdrop_path, id, original_language, original_title, overview, popularity, poster_path, release_date, title, video, vote_average, vote_count, tagline, status, spoken_languages, revenue, runtime, homepage, imdb_id, budget, production_companies, genres
    }
    
    override init() {
        super.init()
        adult = false
        backdrop_path = ""
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
        tagline = ""
        status = ""
        revenue = 0
        runtime = 0
        homepage = ""
        imdb_id = ""
        budget = 0
        production_companies = []
        spoken_languages = []
        genres = []
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        adult = try values.decodeIfPresent(Bool.self, forKey: .adult) ?? false
        backdrop_path = try values.decodeIfPresent(String.self, forKey: .backdrop_path) ?? ""
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
        tagline = try values.decodeIfPresent(String.self, forKey: .tagline) ?? ""
        status = try values.decodeIfPresent(String.self, forKey: .status) ?? ""
        revenue = try values.decodeIfPresent(Int.self, forKey: .revenue) ?? 0
        runtime = try values.decodeIfPresent(Int.self, forKey: .runtime) ?? 0
        homepage = try values.decodeIfPresent(String.self, forKey: .homepage) ?? ""
        imdb_id = try values.decodeIfPresent(String.self, forKey: .imdb_id) ?? ""
        budget = try values.decodeIfPresent(Int.self, forKey: .budget) ?? 0
        production_companies = try values.decodeIfPresent([ProductionCompanies].self, forKey: .production_companies) ?? []
        genres = try values.decodeIfPresent([Genres].self, forKey: .genres) ?? []
        spoken_languages = try values.decodeIfPresent([SpokenLanguages].self, forKey: .spoken_languages) ?? []
    }
}
