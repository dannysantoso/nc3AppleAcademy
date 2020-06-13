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

class GameViewController: UIViewController {
    
    var players:[Players] = [
        Players(name: "Danny", job: "CEO", money: 10000, House: "Mansion", isMarried: false, child: 2, color: "red", insurance: [insurancePlayer(name: "car insurance")], isFinish: false, isCollege: true, floor: 0),
        Players(name: "Danny", job: "CEO", money: 10000, House: "Mansion", isMarried: false, child: 2, color: "red", insurance: [insurancePlayer(name: "car insurance")], isFinish: false, isCollege: true, floor: 0),
        Players(name: "Danny", job: "CEO", money: 10000, House: "Mansion", isMarried: false, child: 2, color: "red", insurance: [insurancePlayer(name: "car insurance")], isFinish: false, isCollege: true, floor: 0)
        ]

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
        print("tes")
        let destination = ShopViewController(nibName: "ShopViewController", bundle: nil)
        destination.modalPresentationStyle = .custom
        self.present(destination, animated: true, completion: nil)
        
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
