//
//  Message.swift
//  Player 2
//
//  Created by Raffaele Colantuono on 17/10/2018.
//  Copyright © 2018 Geekabite. All rights reserved.
//

import UIKit

class Message: NSObject {
    var sender: String
    var text: String
    var time: String
    
    init(sender: String, text: String, time: String) {
        self.sender = sender
        self.text = text
        self.time = time
    }
    
    
}
