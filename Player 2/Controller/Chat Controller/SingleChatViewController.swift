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
    
    @IBOutlet weak var imageGamer: UIImageView!
    @IBOutlet weak var nameGamer: UILabel!
    @IBOutlet weak var lastGame: UILabel!
    
    
   
    var messagePassed : ChatPreview!
    var chatMessages = [Message]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        chatTableView.dataSource = self
        chatTableView.delegate = self
        
        imageGamer.image = messagePassed.imageProfileChat
        nameGamer.text = messagePassed.nameProfileChat
        lastGame.text = messagePassed.lastGame
        print("Carico i Dati")
        
        //notification for keyboard....
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
 
        let notificationCenter = NotificationCenter.default
        
        notificationCenter.addObserver(self, selector: #selector(adjustForKeyboard), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        notificationCenter.addObserver(self, selector: #selector(adjustForKeyboard), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        loadMessagesSample()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
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
          
            return cell;
            
        }
        
    }
    
    func loadMessagesSample(){
        
        let mess01 = Message(sender: messagePassed.nameProfileChat, text: messagePassed.lastMessage, time: "20:11")
        
        //Adding to my list
        chatMessages += [mess01]
        
    }
    
    @IBAction func tapSend(_ sender: Any) {
        let newMess = Message(sender: "You", text: chatTextField.text ?? "" , time: "12:12")
        
        chatMessages += [newMess]
        
        chatTextField.text = ""
        self.chatTableView.reloadData()
        
    }
    
    @objc func adjustForKeyboard(notification: Notification) {
        
        //code to just know the fuckin' keyboard height
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            let keyboardHeight = keyboardRectangle.height
        
            
       if (notification.name == UIResponder.keyboardWillHideNotification){
            print("muove down view")
            self.view.frame = CGRect(x:self.view.frame.origin.x, y:self.view.frame.origin.y + keyboardHeight, width:self.view.frame.size.width, height:self.view.frame.size.height);
            
        } else if (notification.name == UIResponder.keyboardWillShowNotification){
            print("move up the view view")
            self.view.frame = CGRect(x:self.view.frame.origin.x, y:self.view.frame.origin.y - keyboardHeight, width:self.view.frame.size.width, height:self.view.frame.size.height);
       }
        
        }
    }
    
    @objc func dismissKeyboard() {
        
        
            view.endEditing(true)
        
    }
 
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


