//
//  ChatPreview.swift
//  Player 2
//
//  Created by Raffaele Colantuono on 16/10/2018.
//  Copyright © 2018 Geekabite. All rights reserved.
//

import UIKit

class ChatPreview: NSObject {

    var imageProfileChat: UIImage
    var nameProfileChat: String
    var lastGame: String
    var lastMessage: String
    
    init(imageProfileChat: UIImage, nameProfileChat: String, lastGame: String, lastMessage: String){
        
        self.imageProfileChat = imageProfileChat
        self.nameProfileChat = nameProfileChat
        self.lastGame = lastGame
        self.lastMessage = lastMessage
        
    }
    
}
