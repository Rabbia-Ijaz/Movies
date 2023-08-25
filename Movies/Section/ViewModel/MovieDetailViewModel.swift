//
//  MovieDetailViewModel.swift
//  Movies
//
//  Created by Rabbia Ijaz on 25/08/2023.
//

import Foundation
class MovieDetailViewModel: NSObject {
    var movieDetails: MovieDetails?
    
    override init() {
        super.init()
    }
    
    var posterImageURL: String {
        if let url =  movieDetails?.poster_path {
            return "https://image.tmdb.org/t/p/original/" + url
        }
        else {
            return ""
        }
    }
    
    var backdropImageURL: String {
        if let url =  movieDetails?.backdrop_path {
            return "https://image.tmdb.org/t/p/original/" + url
        }
        else {
            return ""
        }
    }
    
    var title:String {
        if let title =  movieDetails?.original_title {
            return title
        }
        else {
            return ""
        }
    }
    
    var tagline:String {
        if let tagline =  movieDetails?.tagline {
            return tagline
        }
        else {
            return ""
        }
    }
    
    var overview:String {
        if let overview =  movieDetails?.overview {
            return overview
        }
        else {
            return ""
        }
    }
    
    
    func getGenres() -> [String] {
        var temp:[String] = []
        if let movieDetails = movieDetails, let genres = movieDetails.genres {
            for genre in genres {
                temp.append(genre.name ?? "")
            }
        }
        return temp
    }
    
    func getProductionCompanies() -> [String] {
        var temp:[String] = []
        if let movieDetails = movieDetails, let companies = movieDetails.production_companies {
            for company in companies {
                temp.append(company.name ?? "")
            }
        }
        return temp
    }
}
