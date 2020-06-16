//
//  ShopViewController.swift
//  gameOfLife2d
//
//  Created by danny santoso on 13/06/20.
//  Copyright © 2020 danny santoso. All rights reserved.
//

import UIKit

protocol reloadShop{
    func onReloadShop(players: [Players])
}

class ShopViewController: UIViewController, reloadShop{

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var insuranceTableView: UITableView!
    
    var playerIndex: Int = 0
    var players = [Players]()
    var delegate: reloadData?
    
    var insurance:[Insurance] = [Insurance(name: "Car Insurance", price: 1000),
                                 Insurance(name: "House Insurance", price: 1000),
                                 Insurance(name: "Health Insurance", price: 1000)
                                ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = players[playerIndex].name
        moneyLabel.text = "\(players[playerIndex].money)"
        
        
        insuranceTableView.dataSource = self
        
        insuranceTableView.register(UINib(nibName: "InsuranceTableViewCell", bundle: nil), forCellReuseIdentifier: "insuranceCell")
        

        // Do any additional setup after loading the view.
    }

    @IBAction func dismiss(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "GameViewController") as! GameViewController
        vc.players = players
        self.delegate?.onReload(index: playerIndex, players: players)
        print(vc.players)
        dismiss(animated: true, completion: nil)
    }
    
    func onReloadShop(players: [Players]) {
        nameLabel.text = players[playerIndex].name
        moneyLabel.text = "\(players[playerIndex].money)"
        self.players = players
    }
}


extension ShopViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        insurance.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "insuranceCell", for: indexPath) as! InsuranceTableViewCell
        
        cell.players = players
        cell.tempPrice = insurance[indexPath.row].price
        cell.playerIndex = playerIndex
        cell.delegate = self
        cell.insuranceName.text = insurance[indexPath.row].name
        cell.insurancePrice.text = String(insurance[indexPath.row].price)
        
        return cell
    }
    
    
}
