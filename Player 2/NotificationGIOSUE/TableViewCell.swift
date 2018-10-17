//
//  TableViewCell.swift
//  Player 2
//
//  Created by Giosuè Sorrentino on 17/10/2018.
//  Copyright © 2018 Geekabite. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageNotification: UIImageView!
    @IBOutlet weak var titleLabelNotification: UILabel!
    @IBOutlet weak var descriptionLabelNotification: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
