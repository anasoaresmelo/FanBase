//
//  Artist.swift
//  FanBase2
//
//  Created by Ana Carolina Soares de Melo on 20/08/20.
//  Copyright © 2020 Ana Carolina Soares de Melo. All rights reserved.
//

import Foundation

struct Artist {
    
    private(set) public var name: String
    private(set) public var imageName: String
    private(set) public var characterName: String
    
    init(name: String, imageName: String, characterName:String) {
        self.name = name
        self.imageName = imageName
        self.characterName = characterName
    }
}
