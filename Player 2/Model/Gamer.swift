//
//  Gamer.swift
//  Player 2
//
//  Created by Raffaele Colantuono on 16/10/2018.
//  Copyright © 2018 Geekabite. All rights reserved.
//

import UIKit

class Gamer: NSObject {
    
    var imageProfile: UIImage
    var name: String
    var popularityRatio : Int
    var level : Int
    
    //Initializer
    init(imageProfile: UIImage,name: String, popularityRatio: Int, level: Int ){
        
        self.imageProfile = imageProfile
        self.name = name
        self.popularityRatio = popularityRatio
        self.level = level
        
    }

}
