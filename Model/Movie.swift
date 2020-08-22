//
//  Movie.swift
//  FanBase2
//
//  Created by Ana Carolina Soares de Melo on 20/08/20.
//  Copyright © 2020 Ana Carolina Soares de Melo. All rights reserved.
//

import Foundation

struct Movie {
    
    private(set) public var title: String
    private(set) public var arrayArtists: [Artist]
    
    init(title: String, arrayArtists: [Artist]) {
        self.title = title
        self.arrayArtists = arrayArtists
    }
}
