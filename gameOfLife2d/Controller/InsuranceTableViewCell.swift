//
//  InsuranceTableViewCell.swift
//  gameOfLife2d
//
//  Created by danny santoso on 13/06/20.
//  Copyright © 2020 danny santoso. All rights reserved.
//

import UIKit

class InsuranceTableViewCell: UITableViewCell {

    @IBOutlet weak var insuranceName: UILabel!
    @IBOutlet weak var insurancePrice: UILabel!
    @IBOutlet weak var buyBtn: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func buyButton(_ sender: Any) {
    }
    
}
