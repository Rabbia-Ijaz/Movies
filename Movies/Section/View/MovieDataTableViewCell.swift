//
//  MovieDataTableViewCell.swift
//  Movies
//
//  Created by Rabbia Ijaz on 25/08/2023.
//
import SDWebImage
import UIKit

protocol MovieDataTableViewCellProtocol: NSObject {
    func getSelectedId(selectedID: Int) -> Void
}

class MovieDataTableViewCell: UITableViewCell {
    
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var nextButton: UIView!

    var id = 0
    weak var delegate: MovieDataTableViewCellProtocol?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func configureCell(name: String, icon: String,lang: String,rating: Double,releaseDate: String,id: Int) {
        nameLabel.text = name
        setIconImage(url: icon)
        languageLabel.text = "Language: " + lang
        ratingLabel.text = "Rating: " + String(rating)
        releaseDateLabel.text = "Release on: " + releaseDate
        self.id = id
    }
    
    func setIconImage(url:String) {
        let baseUrl = "https://image.tmdb.org/t/p/original/"
        let url = baseUrl + url
        if let imageUrl = URL(string: url) {
            self.icon.sd_setImage(with: imageUrl, completed: nil)
        }
        else {
            self.icon.image = UIImage(named: "movieIcon")
        }
    }
}

extension MovieDataTableViewCell {
    @IBAction func nextButtonPressed() {
        delegate?.getSelectedId(selectedID: self.id)
    }
}

