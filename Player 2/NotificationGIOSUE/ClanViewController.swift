//
//  ClanViewController.swift
//  Player 2
//
//  Created by Giosuè Sorrentino on 19/10/2018.
//  Copyright © 2018 Geekabite. All rights reserved.
//
import Foundation
import UIKit

class ClanViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = UIColor.white
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.black
        header.textLabel?.font = UIFont(name: "HelveticaNeue-Medium", size:20)
        
    }

   
}
