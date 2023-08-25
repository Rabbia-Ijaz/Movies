//
//  TmdbAPI.swift
//  Movies
//
//  Created by Rabbia Ijaz on 25/08/2023.
//

import Foundation
class TmdbAPI: NSObject {
    
    class func fetchPopularMoviesList(completion: @escaping ([String: Any]?) -> Void) {
        let headers = [
          "accept": "application/json",
          "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJlZDdkN2ZjZmI0ZjI4YWY2MDIyN2RiZmY3ZWM3MjJkZiIsInN1YiI6IjY0ZTg0MWIwOTBlYTRiMDBhZWZhODc1OCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.a3WQZOBAgOUOFxqQJ1JUQJpPGeb56gJUN7aFeZ7YBqc"
        ]
        if let url = URL(string:"https://api.themoviedb.org/3/movie/popular"){
            
            var request = URLRequest(url: url)
//            let headers = headers
            request.httpMethod = "GET"
            request.allHTTPHeaderFields = headers
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    print(error)
                    completion(nil)
                    return
                }
                
                if let data = data {
                    do {
                        if let dict = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
//                            print (dict)
                            completion(dict)
                        } else {
                            print("Error: Could not decode JSON")
                            completion(nil)
                        }
                    } catch let error {
                        print("Error decoding JSON: \(error)")
                        completion(nil)
                    }
                } else {
                    completion(nil)
                }
            }.resume()
        }
    }
    
    class func fetchMovieDetails(id:Int, completion: @escaping ([String: Any]?) -> Void) {
        let headers = [
          "accept": "application/json",
          "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJlZDdkN2ZjZmI0ZjI4YWY2MDIyN2RiZmY3ZWM3MjJkZiIsInN1YiI6IjY0ZTg0MWIwOTBlYTRiMDBhZWZhODc1OCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.a3WQZOBAgOUOFxqQJ1JUQJpPGeb56gJUN7aFeZ7YBqc"
        ]
        if let url = URL(string:"https://api.themoviedb.org/3/movie/\(id)"){
            
            var request = URLRequest(url: url)
//            let headers = headers
            request.httpMethod = "GET"
            request.allHTTPHeaderFields = headers
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    print(error)
                    completion(nil)
                    return
                }
                
                if let data = data {
                    do {
                        if let dict = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                            print (dict)
                            completion(dict)
                        } else {
                            print("Error: Could not decode JSON")
                            completion(nil)
                        }
                    } catch let error {
                        print("Error decoding JSON: \(error)")
                        completion(nil)
                    }
                } else {
                    completion(nil)
                }
            }.resume()
        }
    }
}
