//
//  ViewController.swift
//  FanBase2
//
//  Created by Ana Carolina Soares de Melo on 20/08/20.
//  Copyright © 2020 Ana Carolina Soares de Melo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    //MARK: Declarations
    @IBOutlet weak var movieListTableView: UITableView!
    private(set) public var movies = [Movie]()
    private(set) public var artists = [Artist]()
    
    var pseudoSection: Int = 0
    
    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TableView Protocols
        movieListTableView.delegate = self
        movieListTableView.dataSource = self
    }
    
    //MARK: TableView SetUp
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getMovies().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell") as? MovieTableViewCell {
            
            let movie = DataService.instance.getMovies()[indexPath.row]
            cell.updateViews(movie: movie)
            
            // CollectionView Protocols
            cell.artistsCV.delegate = self
            cell.artistsCV.dataSource = self
            
            pseudoSection = indexPath.row
            
            return cell
            
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    //MARK: CollectionView SetUp
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
//        return DataService.instance.getArtists(forMovieIndex: section).count
        
        // Gambi com Ale
         return DataService.instance.getArtists(forMovieIndex: pseudoSection).count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ArtistsCollectionViewCell", for: indexPath) as? ArtistsCollectionViewCell {
            
//            let artist = DataService.instance.getArtists(forMovieIndex: indexPath.section)[indexPath.row]
            
            // Gambi com Ale
             let artist = DataService.instance.getArtists(forMovieIndex: pseudoSection)[indexPath.row]
            
            cell.updateViews(artist: artist)
            
            return cell
            
        }

        return UICollectionViewCell()
    }
    
}

