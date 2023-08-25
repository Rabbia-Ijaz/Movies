//
//  MovieDetailViewController.swift
//  Movies
//
//  Created by Rabbia Ijaz on 25/08/2023.
//

import UIKit
import SDWebImage

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var backdropImage: UIImageView!

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var tagLine: UILabel!
    @IBOutlet weak var overview: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var viewModel: MovieDetailViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    class func getInstance(model:MovieDetails) -> MovieDetailViewController {
        let vc = MovieDetailViewController()
        vc.viewModel = MovieDetailViewModel()
        vc.viewModel.movieDetails = model
        return vc
    }

    func setupUI()
    {
        if let imageUrl = URL(string: viewModel.posterImageURL) {
            self.posterImage.sd_setImage(with: imageUrl, completed: nil)
        }
        else {
            self.posterImage.image = UIImage(named: "movieIcon")
        }
        
        if let imageUrl = URL(string: viewModel.backdropImageURL) {
            self.backdropImage.sd_setImage(with: imageUrl, completed: nil)
        }
        else {
            self.backdropImage.image = UIImage(named: "movieIcon")
        }
        
        titleLabel.text = viewModel.title
        tagLine.text = viewModel.tagline
        overview.text = viewModel.overview
    }

}
