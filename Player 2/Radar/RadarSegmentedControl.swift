//
//  RadarSegmentedControl.swift
//  Player 2
//
//  Created by Michele Marras on 18/10/2018.
//  Copyright © 2018 Geekabite. All rights reserved.
//

import UIKit

class RadarSegmentedControl: UIViewController {
    

    @IBOutlet var GamerRadar: UIView! = UIView()
    @IBOutlet var GamerRadarSearched: UIView! = UIView()
    @IBOutlet var ClansRadar: UIView! = UIView()
    @IBOutlet var EventsRadar: UIView! = UIView()
    
    @IBOutlet weak var SegmentationRadar: UISegmentedControl!
    

    @IBAction func RadarChanger(_ sender: Any) {switch (SegmentationRadar.selectedSegmentIndex)
    {
    case 0:
        NSLog("Gamers selected")
        GamerRadar.isHidden = false
        ClansRadar.isHidden = true
        EventsRadar.isHidden = true
        break;
    case 1:
        NSLog("Clans selected")
        GamerRadar.isHidden = true
        ClansRadar.isHidden = false
        EventsRadar.isHidden = true
        break;
    case 2:
        NSLog("Events selected")
        GamerRadar.isHidden = true
        ClansRadar.isHidden = true
        EventsRadar.isHidden = false
        break;
    default:
        break;
        }
    }

    
    @IBOutlet var GamerRadarView: UIView! = UIView()
    
    @IBOutlet weak var NavBarGamerRadar: UINavigationItem!
    
    @IBOutlet var Player1: UIView! = UIView()
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GamerRadar.isHidden = false
        ClansRadar.isHidden = true
        EventsRadar.isHidden = true
        
        self.navigationController?.isNavigationBarHidden = false //to hide navigation bar in radars views
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.tintColor = .red
        self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 0.6635502577, blue: 0.009707250632, alpha: 1)
        
        //Make Navigation bar Trasparent
        
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
