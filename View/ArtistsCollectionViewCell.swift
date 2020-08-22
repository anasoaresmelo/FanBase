//
//  ArtistsCollectionViewCell.swift
//  FanBase2
//
//  Created by Ana Carolina Soares de Melo on 20/08/20.
//  Copyright © 2020 Ana Carolina Soares de Melo. All rights reserved.
//

import UIKit

class ArtistsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var artistPhoto: UIImageView!
    @IBOutlet weak var artistCharacter: UILabel!
    
    func updateViews(artist: Artist) {
        artistName.text = artist.name
        artistPhoto.image = UIImage(named: artist.imageName)
        artistCharacter.text = artist.characterName
    }
    
}
