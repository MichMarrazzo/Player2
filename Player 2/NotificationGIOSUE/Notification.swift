//
//  Notification.swift
//  Player 2
//
//  Created by Giosuè Sorrentino on 17/10/2018.
//  Copyright © 2018 Geekabite. All rights reserved.
//

import UIKit

class Notification: NSObject {
        
        var imageNotification: UIImage
        var titleLabelNotification: String
        var descriptionLabelNotification: String
        
        init(imageNotification: UIImage, titleLabelNotification: String, descriptionLabelNotification: String) {
            
            self.imageNotification = imageNotification
            self.titleLabelNotification = titleLabelNotification
            self.descriptionLabelNotification = descriptionLabelNotification
            }
}
