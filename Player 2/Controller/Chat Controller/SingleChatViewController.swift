//
//  SingleChatViewController.swift
//  Player 2
//
//  Created by Raffaele Colantuono on 17/10/2018.
//  Copyright © 2018 Geekabite. All rights reserved.
//

import UIKit

class SingleChatViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var chatTextField: UITextField!
    @IBOutlet weak var chatTableView: UITableView!
    
    var chatMessages = [Message]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatMessages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let message = chatMessages[indexPath.row]
        
        
        if(message.sender == "You"){
            
            let cellIdentifier = "YourMessageTableViewCell"
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! YourMessageTableViewCell
            
            cell.sender.text = message.sender
            cell.messageText.text = message.text
            cell.time.text = message.time
            
            return cell;
            
        }else{
            
            let cellIdentifier = "OtherMessageTableViewCell"
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! OtherMessageTableViewCell
            
            cell.sender.text = message.sender
            cell.messageText.text = message.text
            cell.time.text = message.time
            print("here")
            return cell;
            
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        chatTableView.dataSource = self
        chatTableView.delegate = self
        
        loadMessagesSample()
        // Do any additional setup after loading the view.
    }
    
    func loadMessagesSample(){
        
        let mess01 = Message(sender: "Ho", text: "hello!", time: "20:11")
        let mess02 = Message(sender: "Ho", text: "bye!", time: "20:11")
        let mess03 = Message(sender: "You", text: "byeeee!", time: "20:11")
        
        //Adding to my list
        chatMessages += [mess01,mess02,mess03]
        
    }
    
    @IBAction func tapSend(_ sender: Any) {
        let newMess = Message(sender: "You", text: chatTextField.text ?? "" , time: "12:12")
        
        chatMessages += [newMess]
        
        chatTextField.text = ""
        self.chatTableView.reloadData()
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
