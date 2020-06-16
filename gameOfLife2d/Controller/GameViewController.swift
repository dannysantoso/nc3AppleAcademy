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
    func reloadFinish(isAllFinish: Bool)
}

class GameViewController: UIViewController, reloadData {
    
    var players = [Players]()
//    var players:[Players] = [
//        Players(name: "Danny", job: "CEO", money: 10000, House: "Mansion", isMarried: false, child: 2, color: "red", insurance: [insurancePlayer(name: "car insurance")], isFinish: false, isCollege: true, floor: 0),
//        Players(name: "Kevin", job: "CEO", money: 8000, House: "Mansion", isMarried: false, child: 2, color: "red", insurance: [insurancePlayer(name: "car insurance")], isFinish: false, isCollege: true, floor: 0),
//        Players(name: "Alex", job: "CEO", money: 6000, House: "Mansion", isMarried: false, child: 2, color: "red", insurance: [insurancePlayer(name: "car insurance")], isFinish: false, isCollege: false, floor: 0)
//        ]
    
    var index = 0
    var isAllFinish = false

    @IBOutlet weak var playerCollectionView: UICollectionView!
    @IBOutlet weak var shopBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        MusicHelper.sharedHelper.playBackgroundMusic()
        shopBtn.isHidden = true //belum dibuat fitur ini
        
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
        destination.players = players
        destination.playerIndex = index
        destination.delegate = self
        self.present(destination, animated: true, completion: nil)
        
    }
    
    func onReload(index: Int, players: [Players]) {
        self.index = index
        self.players = players
        playerCollectionView.reloadData()
    }
    
    func reloadFinish(isAllFinish: Bool) {
        self.isAllFinish = isAllFinish
        if isAllFinish == true{
            onFinish()
            
        }
    }
    
    func onFinish() {
        
            let storyboard = UIStoryboard(name: "FinishScreenStoryboard", bundle: nil)
            let vc = storyboard.instantiateViewController(identifier: "FinishViewController") as! FinishViewController
            vc.players = players
            self.navigationController?.pushViewController(vc, animated: true)
        
    }
}

extension GameViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return players.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "playerCell", for: indexPath) as! CollectionViewCell
        
        cell.namePlayer.text = players[indexPath.row].name
        cell.jobPlayer.text = players[indexPath.row].job.name
        cell.moneyPlayer.text = String(players[indexPath.row].money)
        colorCollection(color: players[indexPath.row].color, cell: cell)
        
        //ini buat ngetes doang kalo datanya masuk apa kaga
        //cell.moneyPlayer.text = String(players[indexPath.row].floor)
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let playerView = PlayerViewController(nibName: "PlayerViewController", bundle: nil)
        
        playerView.nameTemp = players[indexPath.row].name
        playerView.moneyTemp = "$ \(players[indexPath.row].money)"
        if players[indexPath.row].isMarried {
            playerView.statusTemp = "Married"
        }
        else {
            playerView.statusTemp = "Single"
        }
        playerView.currJobtemp = players[indexPath.row].job.name
        playerView.childTemp = "\(players[indexPath.row].child)"
        playerView.color = players[indexPath.row].color
        playerView.getImage = players[indexPath.row].House
        
        self.present(playerView, animated: true, completion: nil)
    }
    
    func colorCollection(color: String, cell: CollectionViewCell){
        switch color {
        case "Green":
            cell.bgColor.backgroundColor = UIColor(red: 0.596, green: 0.816, blue: 0.369, alpha: 1)
        case "Red" :
            cell.bgColor.backgroundColor = UIColor(red: 0.994, green: 0.584, blue: 0.576, alpha: 1)
        case "Yellow" :
            cell.bgColor.backgroundColor = UIColor(red: 0.992, green: 0.753, blue: 0.333, alpha: 1)
        case "Blue" :
            cell.bgColor.backgroundColor = UIColor(red: 0.486, green: 0.784, blue: 1, alpha: 1)
        default:
            cell.bgColor.backgroundColor = UIColor(red: 0.486, green: 0.784, blue: 1, alpha: 1)
        }
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
