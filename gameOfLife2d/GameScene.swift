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
    
    private var spinWheel: SpinWheel!
    
    

    
    override func didMove(to view: SKView) {
        
        self.physicsWorld.contactDelegate = self
        displaySpinWheel()
        
        cameraNode = SKCameraNode()
        
        player1 = childNode(withName: "player1") as? SKSpriteNode
        player2 = childNode(withName: "player2") as? SKSpriteNode
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
        if isTouched2 == false{
            cameraNode.position.x = player1?.position.x as! CGFloat
            cameraNode.position.y = player1?.position.y as! CGFloat
        } else{
            cameraNode.position.x = spinWheel?.position.x as! CGFloat
            cameraNode.position.y = spinWheel?.position.y as! CGFloat
        }
    }
    
    
    func didBegin(_ contact: SKPhysicsContact) {
        spinWheel.didBegin(contact)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if isTouched2 == true {
            isTouched2 = false
            let move = SKAction.move(to: CGPoint(x: 750, y: 705), duration: 1)
            
            player2?.run(move)
            
        }else{
            isTouched2 = true
            let moveLeft = SKAction.moveBy(x: 300, y: 0, duration: 1)
            
            player1?.run(moveLeft)
        }
    }
    
    
}
