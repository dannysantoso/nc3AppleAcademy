//
//  FinishViewController.swift
//  gameOfLife2d
//
//  Created by Alvian Gozali on 15/06/20.
//  Copyright © 2020 danny santoso. All rights reserved.
//

import UIKit

class FinishViewController: UIViewController {
    
    @IBOutlet weak var winnerPlayer: UILabel!
    var players = [Players]()
    
    //dummy
//    var p1 = Players.init(name: "Alvian", money: 20000, House: "", isMarried: true, child: 3, color: "", insurance: [insurancePlayer](), isFinish: true, isCollege: true, floor: 0)
//    var p2 = Players.init(name: "Alvian2", money: 20000, House: "", isMarried: true, child: 2, color: "", insurance: [insurancePlayer](), isFinish: true, isCollege: true, floor: 0)
//    var p3 = Players.init(name: "Alvian3", money: 20000, House: "", isMarried: true, child: 1, color: "", insurance: [insurancePlayer](), isFinish: true, isCollege: true, floor: 0)
//    var p4 = Players.init(name: "Alvian4", money: 20000, House: "", isMarried: true, child: 0, color: "", insurance: [insurancePlayer](), isFinish: true, isCollege: true, floor: 0)
    
    var winnerTotal = 0
    var winnerName = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        //append dummy
//        players.append(p1)
//        players.append(p2)
//        players.append(p3)
 //       players.append(p4)
        // Do any additional setup after loading the view.
    }
    

}

extension FinishViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! FinishTableViewCell
        
        cell.playerName.text = players[indexPath.row].name
        if players[indexPath.row].isMarried {
            cell.wifePoint.text = "\(10)"
            cell.wife = 10
        }
        cell.child = 2 * players[indexPath.row].child
        cell.childrenPoint.text = "\(players[indexPath.row].child) * 2 = \(cell.child)"
        cell.housePoint.text = "\(10)"
        cell.house = 10
        let tempMoney = players[indexPath.row].money/1000
        cell.money = tempMoney
        cell.moneyPoint.text = "\(players[indexPath.row].money)/1000 = \(tempMoney)"
        cell.setTotal()
        cell.totalPoint.text = "\(cell.tempTotal)"
        
        if winnerTotal <= cell.tempTotal {
            winnerTotal = cell.tempTotal
            winnerName = players[indexPath.row].name
            winnerPlayer.text = winnerName
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}

extension FinishViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}
