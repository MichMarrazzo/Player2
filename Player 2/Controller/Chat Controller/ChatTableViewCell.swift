//
//  ChatTableViewCell.swift
//  Player 2
//
//  Created by Raffaele Colantuono on 16/10/2018.
//  Copyright © 2018 Geekabite. All rights reserved.
//

import UIKit

class ChatTableViewCell: UITableViewCell {

    @IBOutlet weak var imageProfileChat: UIImageView!
    @IBOutlet weak var nameProfileChat: UILabel!
    @IBOutlet weak var lastGame: UILabel!
    @IBOutlet weak var lastMessage: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
