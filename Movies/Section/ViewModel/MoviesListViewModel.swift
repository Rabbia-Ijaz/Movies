//
//  MoviesListViewModel.swift
//  Movies
//
//  Created by Rabbia Ijaz on 25/08/2023.
//

import Foundation
class MoviesListViewModel: NSObject {
    var popularMovies: PopularMovies?
    
    override init() {
        super.init()
    }
    
    func parseDataIntoModel(movies:[String:Any]) {
        guard let dataModel = JSONParser().convertToModel(type: PopularMovies.self, object: movies) else { return }
        popularMovies = dataModel
    }
    
    func fetchPopularMovies(completion: @escaping () -> Void) {
        TmdbAPI.fetchPopularMoviesList() { data in
            if let data = data {
                self.parseDataIntoModel(movies: data)
                completion()
            }
            else {
                print("Error")
            }
        }
    }
    
}
