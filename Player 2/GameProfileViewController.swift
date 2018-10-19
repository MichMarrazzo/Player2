//
//  GameProfileViewController.swift
//  Player 2
//
//  Created by Hong on 18/10/2018.
//  Copyright © 2018 Geekabite. All rights reserved.
//

import UIKit

class GameProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    
    @IBAction func btnPlay(_ sender: Any) {
        let alert = UIAlertController(title: "Play Games Together Now!", message: "select how you want to play with the gamer.", preferredStyle: .actionSheet)
        let alertYes = UIAlertController(title: "Confirm", message: "Yay! You have sent an invitation!", preferredStyle: .alert)
        
        
        alert.addAction(UIAlertAction(title: "In Real Life", style: .default, handler: { action in
            //            print("Yay! You brought your towel!")
            self.present(alertYes, animated: true)
            alertYes.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        }))
        alert.addAction(UIAlertAction(title: "Online", style: .default, handler: nil))
        
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(alert, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 120
        tableView.tableFooterView = UIView()
    }
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Section Title \(section)"
//    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if (section == 0) {
            return "Favourite Games"
        }
        if (section == 1) {
            return "Recently Played"
        } else {
            return "Section Title \(section)"
        }
        
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = UIColor.white
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.black
        header.textLabel?.font = UIFont(name: "HelveticaNeue-Medium", size:20)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "GPTableViewCell", for: indexPath) as? GPTableViewCell
        {
            return cell
        }
        return UITableViewCell()
    }

}
