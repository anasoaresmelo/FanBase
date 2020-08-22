//
//  DataService.swift
//  FanBase2
//
//  Created by Ana Carolina Soares de Melo on 20/08/20.
//  Copyright © 2020 Ana Carolina Soares de Melo. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let artistsAquarius = [
        Artist(name: "Sonia Braga", imageName: "sonia-braga.png", characterName: "Clara"),
        Artist(name: "Maeve Jinkings", imageName: "maeve-jinkings.jpeg", characterName: "Ana Paula"),
        Artist(name: "Zoraide Coleto", imageName: "zoraide-coleto.jpeg", characterName: "Ladjane"),
        Artist(name: "Irandhir Santos", imageName: "irandhir-santos.jpeg", characterName: "Roberval"),
        Artist(name: "Humberto Carrão", imageName: "humerto-carrao", characterName: "Diego")
    ]
    
    lazy private var movies = [
        Movie(title: "Aquarius", arrayArtists: artistsAquarius),
        Movie(title: "Xablau", arrayArtists: [Artist(name: "Maeve Jinkings", imageName: "maeve-jinkings.jpeg", characterName: "Ana Paula")]),
        Movie(title: "Tchubirubirub", arrayArtists: [Artist(name: "Humberto Carrão", imageName: "humerto-carrao", characterName: "Diego")])
    ]
    
    
    //MARK: Functions
    func getMovies() -> [Movie] {
        return movies
    }
    
    func getArtists(forMovieIndex section: Int) -> [Artist] {
        switch section {
        case 0:
            return movies[0].arrayArtists
        default:
            return movies[1].arrayArtists
        }
    }
    
}
