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
    @IBOutlet var ClansRadar: UIView! = UIView()
    @IBOutlet var EventsRadar: UIView! = UIView()
    
    @IBOutlet weak var SegmentationRadar: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GamerRadar.isHidden = false
        ClansRadar.isHidden = true
        EventsRadar.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    
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


    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
