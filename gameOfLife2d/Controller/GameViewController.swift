//
//  GameViewController.swift
//  gameOfLife2d
//
//  Created by danny santoso on 10/06/20.
//  Copyright © 2020 danny santoso. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

protocol reloadData{
    func onReload(index: Int, players: [Players])
}

class GameViewController: UIViewController, reloadData {
    
    var players = [Players]()
//    var players:[Players] = [
//        Players(name: "Danny", job: "CEO", money: 10000, House: "Mansion", isMarried: false, child: 2, color: "red", insurance: [insurancePlayer(name: "car insurance")], isFinish: false, isCollege: true, floor: 0),
//        Players(name: "Kevin", job: "CEO", money: 8000, House: "Mansion", isMarried: false, child: 2, color: "red", insurance: [insurancePlayer(name: "car insurance")], isFinish: false, isCollege: true, floor: 0),
//        Players(name: "Alex", job: "CEO", money: 6000, House: "Mansion", isMarried: false, child: 2, color: "red", insurance: [insurancePlayer(name: "car insurance")], isFinish: false, isCollege: false, floor: 0)
//        ]
    
    var index = 0

    @IBOutlet weak var playerCollectionView: UICollectionView!
    @IBOutlet weak var shopBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerCollectionView.dataSource = self
        playerCollectionView.delegate = self
        
        playerCollectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "playerCell")
        
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                scene.userData = NSMutableDictionary()
                scene.userData?.setObject(self, forKey: "delegate" as NSCopying)
                scene.userData?.setObject(players, forKey: "modelPlayer" as NSCopying)
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
            
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    @IBAction func shopButton(_ sender: Any) {

        let destination = ShopViewController(nibName: "ShopViewController", bundle: nil)
//        destination.modalPresentationStyle = .custom
        destination.name = players[index].name
        destination.money = players[index].money
        self.present(destination, animated: true, completion: nil)
        
    }
    
    func onReload(index: Int, players: [Players]) {
        self.index = index
        self.players = players
        playerCollectionView.reloadData()
    }
}

extension GameViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return players.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "playerCell", for: indexPath) as! CollectionViewCell
        
        cell.namePlayer.text = players[indexPath.row].name
        cell.jobPlayer.text = players[indexPath.row].job
        cell.moneyPlayer.text = String(players[indexPath.row].money)
        
        //ini buat ngetes doang kalo datanya masuk apa kaga
        cell.moneyPlayer.text = String(players[indexPath.row].floor)
        
        
        return cell
    }
    
    
}

extension GameViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let inset:CGFloat = 0
        return UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 110, height: 80)
    }
}

//HIDE NAV BAR
extension GameViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}
