//
//  MovieTableViewCell.swift
//  FanBase2
//
//  Created by Ana Carolina Soares de Melo on 20/08/20.
//  Copyright © 2020 Ana Carolina Soares de Melo. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var artistsCV: UICollectionView!
    
    func updateViews(movie: Movie){
        movieTitle.text = movie.title
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
