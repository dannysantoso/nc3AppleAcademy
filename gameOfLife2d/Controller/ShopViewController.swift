//
//  ShopViewController.swift
//  gameOfLife2d
//
//  Created by danny santoso on 13/06/20.
//  Copyright © 2020 danny santoso. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var insuranceTableView: UITableView!
    var name: String?
    var money: Int?
    
    var insurance:[Insurance] = [Insurance(name: "Car Insurance", price: 1000),
                                 Insurance(name: "House Insurance", price: 1000),
                                 Insurance(name: "Health Insurance", price: 1000)
                                ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        moneyLabel.text = String(money!)
        
        
        insuranceTableView.dataSource = self
        
        insuranceTableView.register(UINib(nibName: "InsuranceTableViewCell", bundle: nil), forCellReuseIdentifier: "insuranceCell")
        

        // Do any additional setup after loading the view.
    }

    @IBAction func dismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}


extension ShopViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        insurance.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "insuranceCell", for: indexPath) as! InsuranceTableViewCell
        
        cell.insuranceName.text = insurance[indexPath.row].name
        cell.insurancePrice.text = String(insurance[indexPath.row].price)
        
        return cell
    }
    
    
}
