//
//  TableViewController.swift
//  Player 2
//
//  Created by Giosuè Sorrentino on 17/10/2018.
//  Copyright © 2018 Geekabite. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var listNotification = [Notification]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSampleNotifications()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listNotification.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "TableViewCell" //alias della nostra cella, RICORDATI DI METTERE L'IDENTTIFIER NELLA CELLA
    
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TableViewCell else {
            fatalError("The dequeued cell is not an instance of your TableViewCell.")
        }
        
        let notification = listNotification[indexPath.row]
        
        cell.imageNotification.image = notification.imageNotification
        cell.titleLabelNotification.text = notification.titleLabelNotification
        cell.descriptionLabelNotification.text = notification.descriptionLabelNotification
        
        return cell
    }
    
    private func loadSampleNotifications() {
        
       // let photoFriendNotification = UIImage(named: "friendPhoto")!
        let clan1Notification = UIImage(named: "clan1Notification")!
        let clanMatchNotification = UIImage(named: "clanMatchNotification")!
        let eventNotification = UIImage(named: "starNotification")!
        let photoFriendNotification = UIImage(named: "marioNotification")!
        let popularityNotification = UIImage(named: "popularityNotification")!
        
        //devo ancora caricare delle foto
        let notification0 = Notification(imageNotification: photoFriendNotification, titleLabelNotification: "Play together 🎮", descriptionLabelNotification: "Mario send you an invitation to play")
        let notification1 = Notification(imageNotification: photoFriendNotification, titleLabelNotification: "New Friend!😊" , descriptionLabelNotification: "Mario wants to add you as a friend. Chat and play with him!")
        
        let notification2 = Notification(imageNotification: eventNotification, titleLabelNotification: "Event near to you" , descriptionLabelNotification: "Fifa Tournament at Centro Commeriale Campania!")
        
        let notification3 = Notification(imageNotification: eventNotification, titleLabelNotification: "Event near to you", descriptionLabelNotification: "Comicon at Napoli Mostra d'Oltremare")
        
        let notification4 = Notification(imageNotification: clanMatchNotification, titleLabelNotification: "Clan Match! 🎮", descriptionLabelNotification: "The clan LOST wants to play against your clan")
        
        let notification5 = Notification(imageNotification: clan1Notification, titleLabelNotification: "Clan invitation", descriptionLabelNotification: "The clan GiGGione send you an invitation")
        
        let notification6 = Notification(imageNotification: popularityNotification, titleLabelNotification: "Popularity", descriptionLabelNotification: "Great, your popularity is increased!")
        
        listNotification += [notification0,notification1,notification2,notification3,notification4,notification5,notification6]
    }
        /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
