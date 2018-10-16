//
//  Clan.swift
//  Player 2
//
//  Created by Raffaele Colantuono on 16/10/2018.
//  Copyright © 2018 Geekabite. All rights reserved.
//

import UIKit

class Clan: NSObject {

    var imageClan: UIImage
    var name: String
    var members: [Gamer]
    var popularityRatio : Int
    var victoryRatio : Int
    
    //Initializer
    init(imageClan: UIImage,name: String,members: [Gamer], popularityRatio: Int, victoryRatio: Int ){
        
        self.imageClan = imageClan
        self.name = name
        self.members = members
        self.popularityRatio = popularityRatio
        self.victoryRatio = victoryRatio
        
    }
    
}
