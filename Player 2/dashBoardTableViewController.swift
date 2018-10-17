//
//  dashBoardTableViewController.swift
//  Player 2
//
//  Created by Hong on 17/10/2018.
//  Copyright © 2018 Geekabite. All rights reserved.
//

import Foundation
import UIKit

class dashBoardViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerView = UIView()
//        headerView.backgroundColor = UIColor.lightGray
//
//        let headerLabel = UILabel(frame: CGRect(x: 15, y: 0, width:
//            tableView.bounds.size.width, height: tableView.bounds.size.height))
//        headerLabel.font = UIFont(name: "Helvetica", size: 20)
//        headerLabel.textColor = UIColor.white
//        headerLabel.text = self.tableView(self.tableView, titleForHeaderInSection: section)
//        headerLabel.sizeToFit()
//        headerView.addSubview(headerLabel)
//
//        return headerView
//    }
//
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
