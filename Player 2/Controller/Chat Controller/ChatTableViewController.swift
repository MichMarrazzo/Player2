//
//  ChatTableViewController.swift
//  Player 2
//
//  Created by Raffaele Colantuono on 16/10/2018.
//  Copyright © 2018 Geekabite. All rights reserved.
//

import UIKit

class ChatTableViewController: UITableViewController {

    @IBOutlet weak var segmentationChat: UISegmentedControl!
    @IBOutlet var tableChat: UITableView!

    //Variable to know wich cell is tapped
    var selectedCell = IndexPath(item: 0, section: 0)
    
    
    //list of (samples) chat
    var chatPreviewList = [ChatPreview]()
    var chatGroupPreviewList = [ChatPreview]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadChatSamples()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        //1 section
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return chatPreviewList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "ChatTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ChatTableViewCell
        
        switch(segmentationChat.selectedSegmentIndex)
        {
        case 0:
            //take chat preview from list
            let chat = chatPreviewList[indexPath.row]
            
            // Configure the cell
            cell.imageProfileChat.image = chat.imageProfileChat
            cell.nameProfileChat.text = chat.nameProfileChat
            cell.lastGame.text = chat.lastGame
            cell.lastMessage.text = chat.lastMessage
            break
        
        case 1:
            
            let chatGroup = chatGroupPreviewList[indexPath.row]
            
            // Configure the cell
            cell.imageProfileChat.image = chatGroup.imageProfileChat
            cell.nameProfileChat.text = chatGroup.nameProfileChat
            cell.lastGame.text = chatGroup.lastGame
            cell.lastMessage.text = chatGroup.lastMessage
            break
            
        default:
            break
        }

        return cell
    }
    
    @IBAction func tapSegmentation(_ sender: Any) {
        self.tableChat.reloadData()
    }
    
    func loadChatSamples(){
        
        //Function to create samples of chat preview
        let photo1 = UIImage(named: "profile1")!
        let photo2 = UIImage(named: "profile2")!
        let photo3 = UIImage(named: "profile3")!
        
        let chat01 = ChatPreview(imageProfileChat: photo1, nameProfileChat: "Ho", lastGame: "Assassin's Creed: Origins", lastMessage: "Are you there?")
        let chat02 = ChatPreview(imageProfileChat: photo2, nameProfileChat: "Giosuè", lastGame: "FIFA 2019", lastMessage: "See you later!")
        let chat03 = ChatPreview(imageProfileChat: photo3, nameProfileChat: "Michele", lastGame: "Rocket League", lastMessage: "Lol")
        
        //Adding to my list
        chatPreviewList += [chat01,chat02,chat03]
        
        //Function to create samples of chat preview for group
        let photoGroup1 = UIImage(named: "profileGroup1")!
        let photoGroup2 = UIImage(named: "profileGroup2")!
        let photoGroup3 = UIImage(named: "profileGroup3")!
        
        let chatGroup01 = ChatPreview(imageProfileChat: photoGroup1, nameProfileChat: "Invincibles", lastGame: "COD: Black Vipers", lastMessage: "Gooooo")
        let chatGroup02 = ChatPreview(imageProfileChat: photoGroup2, nameProfileChat: "Lot of Fun CLAN", lastGame: "LOL", lastMessage: "We lose...")
        let chatGroup03 = ChatPreview(imageProfileChat: photoGroup3, nameProfileChat: "MisteryClan", lastGame: "Rocket League", lastMessage: "What about tonight?")
        
        //Adding to my list
        chatGroupPreviewList += [chatGroup01,chatGroup02,chatGroup03]
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //this function is for tap action on a cell
        print("This cell from the chat list was selected: \(indexPath.row)")
        selectedCell = indexPath
        self.performSegue(withIdentifier: "SingleChatViewController", sender: self)
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //this is for prepare data to net view
        print("Sono in prepare")
        if (segue.identifier == "SingleChatViewController"){
            if let vc = segue.destination as? SingleChatViewController {
                print("Setto in prepare")
                if(segmentationChat.selectedSegmentIndex == 0){
                    vc.messagePassed = chatPreviewList[selectedCell.row]
                }else{
                     vc.messagePassed = chatGroupPreviewList[selectedCell.row]
                }
            }
        }
    }
    
}
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

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   
