//
//  PlayerViewController.swift
//  gameOfLife2d
//
//  Created by danny santoso on 13/06/20.
//  Copyright © 2020 danny santoso. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var money: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var currJob: UILabel!
    @IBOutlet weak var child: UILabel!
    
    var nameTemp: String = ""
    var moneyTemp: String = ""
    var statusTemp: String = ""
    var currJobtemp: String = ""
    var childTemp: String = ""
    var color: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = nameTemp
        money.text = moneyTemp
        status.text = statusTemp
        currJob.text = currJobtemp
        child.text = childTemp
        
        
        switch color {
        case "Green":
            view.layer.backgroundColor = UIColor(red: 0.596, green: 0.816, blue: 0.369, alpha: 1).cgColor
        case "Red" :
            view.layer.backgroundColor = UIColor(red: 0.994, green: 0.584, blue: 0.576, alpha: 1).cgColor
        case "Yellow" :
            view.layer.backgroundColor = UIColor(red: 0.992, green: 0.753, blue: 0.333, alpha: 1).cgColor
        case "Blue" :
            view.layer.backgroundColor = UIColor(red: 0.486, green: 0.784, blue: 1, alpha: 1).cgColor
        default:
            view.layer.backgroundColor = UIColor(red: 0.486, green: 0.784, blue: 1, alpha: 1).cgColor
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtnAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
