//
//  OtherMessageTableViewCell.swift
//  Player 2
//
//  Created by Raffaele Colantuono on 17/10/2018.
//  Copyright © 2018 Geekabite. All rights reserved.
//

import UIKit

class OtherMessageTableViewCell: UITableViewCell {

    @IBOutlet weak var sender: UILabel!
    @IBOutlet weak var messageText: UILabel!
    @IBOutlet weak var time: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
