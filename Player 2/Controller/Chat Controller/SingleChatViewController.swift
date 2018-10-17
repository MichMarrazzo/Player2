//
//  SingleChatViewController.swift
//  Player 2
//
//  Created by Raffaele Colantuono on 17/10/2018.
//  Copyright © 2018 Geekabite. All rights reserved.
//

import UIKit

class SingleChatViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    var otherChat = "Other Message"
    var yourChat = ""
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "SingleChatTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! SingleChatTableViewCell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
