//
//  GameScene.swift
//  gameOfLife2d
//
//  Created by danny santoso on 10/06/20.
//  Copyright © 2020 danny santoso. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var cameraNode: SKCameraNode!
    var player1 : SKSpriteNode?
    var player2 : SKSpriteNode?
    var player3 : SKSpriteNode?
    var player4 : SKSpriteNode?
    var isTouched2 = false
    var turn = 1
    var player : SKSpriteNode?
    
    private var spinWheel: SpinWheel!
    
    

    
    override func didMove(to view: SKView) {
        
        self.physicsWorld.contactDelegate = self
        displaySpinWheel()
        
        cameraNode = SKCameraNode()
        
        player1 = childNode(withName: "player1") as? SKSpriteNode
        player2 = childNode(withName: "player2") as? SKSpriteNode
        player3 = childNode(withName: "player3") as? SKSpriteNode
        player4 = childNode(withName: "player4") as? SKSpriteNode
        addChild(cameraNode)
        camera = cameraNode
        cameraNode.position.x = size.width / 2
        cameraNode.position.y = size.height / 2
        
        
        
    }
    
    func displaySpinWheel() {
        
        print("spin wheel")
        spinWheel = SpinWheel(size: self.size)
        spinWheel.setScale(0.65)
        spinWheel.zPosition = 500
        spinWheel.position = CGPoint(x: 1300, y: -600)
        addChild(spinWheel)
        
        spinWheel.initPhysicsJoints()
    }
    
    override func update(_ currentTime: TimeInterval) {
        spinWheel.updateWheel(currentTime)
        if spinWheel.spinDone == true{
            cameraNode.position.x = player?.position.x as! CGFloat
            cameraNode.position.y = player?.position.y as! CGFloat
        }
//        } else{
//            cameraNode.position.x = spinWheel?.position.x as! CGFloat
//            cameraNode.position.y = spinWheel?.position.y as! CGFloat
//
//        }
        print(spinWheel.spinDone)
    }
    
    
    func didBegin(_ contact: SKPhysicsContact) {
        spinWheel.didBegin(contact)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//            if spinWheel.spinDone == true {
//                if turn == 1{
//                    cameraNode.position.x = player1?.position.x as! CGFloat
//                    cameraNode.position.y = player1?.position.y as! CGFloat
//                    spinWheel.spinDone = false
//                    turn = 2
//                }else if turn == 2{
//                    cameraNode.position.x = player2?.position.x as! CGFloat
//                    cameraNode.position.y = player2?.position.y as! CGFloat
//                    spinWheel.spinDone = false
//                    turn = 3
//                }else if turn == 3{
//                    cameraNode.position.x = player3?.position.x as! CGFloat
//                    cameraNode.position.y = player3?.position.y as! CGFloat
//                    spinWheel.spinDone = false
//                    turn = 4
//                }else if turn == 4{
//                    cameraNode.position.x = player4?.position.x as! CGFloat
//                    cameraNode.position.y = player4?.position.y as! CGFloat
//                    spinWheel.spinDone = false
//                    turn = 1
//                }
//
////                let move = SKAction.move(to: CGPoint(x: 750, y: 705), duration: 1)
////                print("tes")
////                player2?.run(move)
////                print(spinWheel.value)
//
//            }else{
                cameraNode.position.x = spinWheel?.position.x as! CGFloat
                cameraNode.position.y = spinWheel?.position.y as! CGFloat
                
                if turn == 1 {
                    player = player1
                    spinWheel.spinDone = false
                    turn = 2
                }else if turn == 2 {
                    player = player2
                    spinWheel.spinDone = false
                    turn = 3
                }else if turn == 3 {
                    player = player3
                    spinWheel.spinDone = false
                    turn = 4
                }else if turn == 4 {
                    player = player4
                    spinWheel.spinDone = false
                    turn = 1
                }
//        }
    }
    
    
    
}
