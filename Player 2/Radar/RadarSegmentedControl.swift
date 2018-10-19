//
//  RadarSegmentedControl.swift
//  Player 2
//
//  Created by Michele Marras on 18/10/2018.
//  Copyright © 2018 Geekabite. All rights reserved.
//

import UIKit

class RadarSegmentedControl: UIViewController {
    

    @IBOutlet weak var SegmentationRadar: UISegmentedControl!
    
    
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var profileButton2: UIButton!
    
    @IBOutlet weak var clanButton2: UIButton!
    @IBOutlet weak var clanButton: UIButton!
    
    @IBOutlet weak var eventButton: UIButton!
    @IBOutlet weak var eventButton2: UIButton!
    
    
    @IBAction func RadarChanger(_ sender: Any) {switch (SegmentationRadar.selectedSegmentIndex)
    {
    case 0:
        NSLog("Gamers selected")
        self.clanButton.isHidden = true
        self.eventButton.isHidden = true
        self.profileButton.isHidden = false
        
        self.clanButton2.isHidden = true
        self.eventButton2.isHidden = true
        self.profileButton2.isHidden = false
        break;
    case 1:
        NSLog("Clans selected")
        self.clanButton.isHidden = false
        self.eventButton.isHidden = true
        self.profileButton.isHidden = true
        
        self.clanButton2.isHidden = false
        self.eventButton2.isHidden = true
        self.profileButton2.isHidden = true
        break;
    case 2:
        NSLog("Events selected")
        self.clanButton.isHidden = true
        self.eventButton.isHidden = false
        self.profileButton.isHidden = true
        
        self.clanButton2.isHidden = true
        self.eventButton2.isHidden = false
        self.profileButton2.isHidden = true
        break;
    default:
        break;
        }
    }

    
  
    /*
    @IBAction func PropicButt(_ sender: Any) {
        RandomViewMover(MiniPropic: Player1)
    }
    


    
    func RandomViewMover(MiniPropic: UIView) {
        
        // Find the button's width and height
        let buttonWidth = MiniPropic.frame.width
        let buttonHeight = MiniPropic.frame.height
        
        // Find the width and height of the enclosing view
        print(Player1.frame.width)
        let viewWidth = GamerRadarView.bounds.width
        let viewHeight = GamerRadarView.bounds.height
        
        // Compute width and height of the area to contain the button's center
        let xwidth = viewWidth - buttonWidth
        let yheight = viewHeight - buttonHeight
        
        // Generate a random x and y offset
        let xoffset = CGFloat(arc4random_uniform(UInt32(xwidth)))
        let yoffset = CGFloat(arc4random_uniform(UInt32(yheight)))
        
        // Offset the button's center by the random offsets.
        MiniPropic.center.x = xoffset + buttonWidth / 2
        MiniPropic.center.y = yoffset + buttonHeight / 2
        print(Player1.frame.width)
        print("here")
        
    }
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.clanButton.isHidden = true
        self.eventButton.isHidden = true
        self.profileButton.isHidden = false
        
        self.clanButton2.isHidden = true
        self.eventButton2.isHidden = true
        self.profileButton2.isHidden = false
        
        self.navigationController?.isNavigationBarHidden = false //to hide navigation bar in radars views
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.tintColor = .red
        self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 0.6635502577, blue: 0.009707250632, alpha: 1)
        
        //Make Navigation bar Trasparent
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func gamerTap(_ sender: Any) {
        print("premuto")
        self.performSegue(withIdentifier: "toGamer", sender: self)
    }
    
    @IBAction func eventTap(_ sender: Any) {
        print("premuto")
        self.performSegue(withIdentifier: "toEvent", sender: self)
    }
    
    @IBAction func clanTap(_ sender: Any) {
        print("premuto")
        self.performSegue(withIdentifier: "toClan", sender: self)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(true){
            if(segue.identifier == "toGamer"){
                print("Preparo per il profilo")
                //let vc = segue.destination as? NomeControllerDelProfilo
                
                
            }else if(segue.identifier == "toEvent"){
                print("Preparo per evento")
                //let vc = segue.destination as? Nome dell'evento
                
            }else if(segue.identifier == "toClan"){
                 print("Preparo per clan")
                
                //let vc = segue.destination as? NomeControllerDelClan

            }
            
        }
    }
  

}
