//
//  MoviesListViewController.swift
//  Movies
//
//  Created by Rabbia Ijaz on 25/08/2023.
//

import UIKit

class MoviesListViewController: UIViewController {

    
    //MARK: Properties
    let viewModel = MoviesListViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchPopularMovies() {
            [weak self] in
//            self?.showPins()
            print(self?.viewModel.popularMovies?.results?[0] as Any)
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
