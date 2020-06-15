//
//  AddPlayerViewController.swift
//  gameOfLife2d
//
//  Created by Alvian Gozali on 12/06/20.
//  Copyright © 2020 danny santoso. All rights reserved.
//

import UIKit

class AddPlayerViewController: UIViewController {
    
    var players = [Players]()
    var tempColor: String = "Blue"
    var tempName: String = "No Name"
    
    @IBOutlet weak var playerTable: UITableView!
    @IBOutlet weak var nameTextArea: UITextField!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var startBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startBtn.isHidden = true
        //let player = Player.init(name: "No Name", color: tempColor)
        //players.append(player)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addPlayerBtnAction(_ sender: Any) {
        if nameTextArea.text == "" {
            tempName = "No Name"
        }
        else {
            tempName = nameTextArea.text!
        }
        let player = Players.init(name: tempName, money: 10000, House: "", isMarried: false, child: 0, color: tempColor, insurance: [insurancePlayer](), isFinish: false, isCollege: true, floor: 0)
        
        players.append(player)
        print(player.color)
        playerTable.reloadData()
        
        if players.count == 4 {
            addBtn.isHidden = true
        }
        if players.count == 2 {
            startBtn.isHidden = false
        }
    }
    
    @IBAction func startGameBtnAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "GameViewController") as! GameViewController
        vc.players = players
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func blueBtnAction(_ sender: Any) {
        tempColor = "Blue"
    }
    
    @IBAction func redBtnAction(_ sender: Any) {
        tempColor = "Red"
    }
    
    @IBAction func yellowBtnAction(_ sender: Any) {
        tempColor = "Yellow"
    }
    
    @IBAction func greenBtnAction(_ sender: Any) {
        tempColor = "Green"
    }
    
    
}

//hide nav bar
extension AddPlayerViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}

//TABLE
extension AddPlayerViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! AddPlayerTableViewCell
        
        cell.nameTextArea.text = players[indexPath.row].name
        if players[indexPath.row].color == "Blue" {
            cell.colorBtn.backgroundColor = .systemBlue
            
        }
        else if players[indexPath.row].color == "Red" {
            cell.colorBtn.backgroundColor = .systemRed
        }
        else if players[indexPath.row].color == "Yellow" {
            cell.colorBtn.backgroundColor = .systemYellow
        }
        else {
            cell.colorBtn.backgroundColor = .systemGreen
        }
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    
}