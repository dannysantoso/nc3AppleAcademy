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
        
    var players = [Players]()
    var tempPrice: Int = 0
    var playerIndex = 0
    var delegate: reloadShop!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func buyButton(_ sender: Any) {
        if players[playerIndex].money >= tempPrice {
            players[playerIndex].money -= tempPrice
        }
        
        let vc = ShopViewController(nibName: "ShopViewController", bundle: nil)
        vc.players = players
        self.delegate.onReloadShop(players: players)
    }
    
}
