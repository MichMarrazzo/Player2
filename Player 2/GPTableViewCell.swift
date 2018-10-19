//
//  GPTableViewCell.swift
//  Player 2
//
//  Created by Hong on 18/10/2018.
//  Copyright © 2018 Geekabite. All rights reserved.
//

import UIKit

class GPTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var imageArray = [String] ()
    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        imageArray = ["1.jpeg","2.jpeg","3.jpeg","4.jpeg"]
        // Initialization code
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return imageArray.count
//        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell: GPCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "GPCollectionViewCell", for: indexPath) as? GPCollectionViewCell
        {
        cell.imgImage.image = UIImage(named: imageArray[indexPath.row])

        return cell
        }
        return UICollectionViewCell()
    }
    
    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        if let cell: GPCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "GPCollectionViewCell", for: indexPath) as? GPCollectionViewCell
//        {
//            let randomNumber = Int(arc4random_uniform(UInt32(imageArray.count)))
//            cell.imgImage.image = UIImage(named: imageArray[randomNumber])
//            return cell
//        }
//        return UICollectionViewCell()
//    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        let size = CGSize(width: 120, height: 120)
        return size
    }
}
