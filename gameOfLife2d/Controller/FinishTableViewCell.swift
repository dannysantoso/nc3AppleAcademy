//
//  FinishTableViewCell.swift
//  gameOfLife2d
//
//  Created by Alvian Gozali on 16/06/20.
//  Copyright © 2020 danny santoso. All rights reserved.
//

import UIKit

class FinishTableViewCell: UITableViewCell {
    
    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var totalPoint: UILabel!
    @IBOutlet weak var wifePoint: UILabel!
    @IBOutlet weak var childrenPoint: UILabel!
    @IBOutlet weak var housePoint: UILabel!
    @IBOutlet weak var moneyPoint: UILabel!
    
    var tempTotal = 0
    var wife = 0
    var child = 0
    var house = 0
    var money = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setTotal() {
        tempTotal = wife + child + house + money
    }

}
