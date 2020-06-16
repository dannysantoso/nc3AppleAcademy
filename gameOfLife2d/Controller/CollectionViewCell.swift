//
//  CollectionViewCell.swift
//  gameOfLife2d
//
//  Created by danny santoso on 13/06/20.
//  Copyright © 2020 danny santoso. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var namePlayer: UILabel!
    @IBOutlet weak var jobPlayer: UILabel!
    @IBOutlet weak var moneyPlayer: UILabel!
    @IBOutlet weak var bgColor: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
