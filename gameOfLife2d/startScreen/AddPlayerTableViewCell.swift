//
//  AddPlayerTableViewCell.swift
//  gameOfLife2d
//
//  Created by Alvian Gozali on 13/06/20.
//  Copyright © 2020 danny santoso. All rights reserved.
//

import UIKit

class AddPlayerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameTextArea: UITextField!
    @IBOutlet weak var colorBtn: UIButton!
    
    var color: String = "No Color"

    override func awakeFromNib() {
        super.awakeFromNib()
        nameTextArea.isUserInteractionEnabled = false
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
