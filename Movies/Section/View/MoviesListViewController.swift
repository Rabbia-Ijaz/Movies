//
//  MoviesListViewController.swift
//  Movies
//
//  Created by Rabbia Ijaz on 25/08/2023.
//

import UIKit

class MoviesListViewController: UIViewController {
    
    @IBOutlet weak var movieIcon: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var titleLabel: UILabel!
    
    //MARK: Properties
    let viewModel = MoviesListViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchPopularMovies() {
            [weak self] in
            print(self?.viewModel.popularMovies?.results?[0] as Any)
            self?.configureTableView()
        }
        
    }
    
    func configureTableView() {
        DispatchQueue.main.async  {
            self.tableView.register((UINib(nibName: "MovieDataTableViewCell", bundle: nil)), forCellReuseIdentifier: "MovieDataTableViewCell")
            self.tableView.delegate = self
            self.tableView.dataSource = self
            self.tableView.tableFooterView?.isHidden = false
        }
    }
    
}
    
extension MoviesListViewController: MovieDataTableViewCellProtocol {
    func getSelectedId(selectedID: Int) {
        viewModel.fetchMovieDetail(id: selectedID) {
            DispatchQueue.main.async  {
                [weak self] in
                guard let model = self?.viewModel.movieDetails else {return}
                let viewController = MovieDetailViewController.getInstance(model: model)
                self?.navigationController?.pushViewController(viewController, animated: true)
            }
        }
        

    }
}

extension MoviesListViewController: UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieDataTableViewCell.nibName, for: indexPath) as! MovieDataTableViewCell
        
        
        let movie = viewModel.getResult(ind: indexPath.row)
        cell.configureCell(
            name: movie.original_title ?? "",
            icon: movie.backdrop_path ?? "",
            lang: movie.original_language ?? "",
            rating: movie.vote_average ?? 0.0,
            releaseDate: movie.release_date ?? "",
            id: movie.id ?? 0
        )
        cell.delegate = self
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 25.0
    }
}
