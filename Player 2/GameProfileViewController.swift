//
//  GameProfileViewController.swift
//  Player 2
//
//  Created by Hong on 18/10/2018.
//  Copyright © 2018 Geekabite. All rights reserved.
//

import UIKit

class GameProfileViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {


    var imageArray = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3"), UIImage(named: "4")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
        
        cell.imgImage.image = imageArray[indexPath.row]
        
        return cell
    }

}
