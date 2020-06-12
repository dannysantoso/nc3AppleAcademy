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
    var value = 0
    var floor = 1
    
    private var spinWheel: SpinWheel!
    
    

    
    //punya spritekit dimana didmove udah dimasukin ke scene, didload punya uikit
    override func didMove(to view: SKView) {
        setupMap()
        setupCamera()
        setupPlayer()
        
        cameraNode.position.x = player1?.position.x as! CGFloat
        cameraNode.position.y = player1?.position.y as! CGFloat
        
        self.physicsWorld.contactDelegate = self
        displaySpinWheel()
        
    }
    
    func setupPlayer(){
        player1 = childNode(withName: "player1") as? SKSpriteNode
        player2 = childNode(withName: "player2") as? SKSpriteNode
        player3 = childNode(withName: "player3") as? SKSpriteNode
        player4 = childNode(withName: "player4") as? SKSpriteNode
    }
    
    func setupCamera(){
        cameraNode = self.camera
        cameraNode.position.x = size.width / 2
        cameraNode.position.y = size.height / 2
    }
    
    func setupMap(){
        let gameMap = SKSpriteNode(imageNamed: "gameOfLifeMap")
        gameMap.zPosition = -5
        gameMap.position = CGPoint(x: 2183.564, y: -896.431)
        addChild(gameMap)
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
        updateWheel(currentTime)
        if spinWheel.spinDone == true{
            cameraNode.position.x = player?.position.x as! CGFloat
            cameraNode.position.y = player?.position.y as! CGFloat
        }
//        } else{
//            cameraNode.position.x = spinWheel?.position.x as! CGFloat
//            cameraNode.position.y = spinWheel?.position.y as! CGFloat
//
//        }
//        print(spinWheel.spinDone)
    }
    
    
    func didBegin(_ contact: SKPhysicsContact) {
        spinWheel.didBegin(contact)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            if spinWheel.spinDone == true {
                if turn == 1{
                    cameraNode.position.x = player2?.position.x as! CGFloat
                    cameraNode.position.y = player2?.position.y as! CGFloat
                    spinWheel.spinDone = false
                    turn = 2
                }else if turn == 2{
                    cameraNode.position.x = player3?.position.x as! CGFloat
                    cameraNode.position.y = player3?.position.y as! CGFloat
                    spinWheel.spinDone = false
                    turn = 3
                }else if turn == 3{
                    cameraNode.position.x = player4?.position.x as! CGFloat
                    cameraNode.position.y = player4?.position.y as! CGFloat
                    spinWheel.spinDone = false
                    turn = 4
                }else if turn == 4{
                    cameraNode.position.x = player1?.position.x as! CGFloat
                    cameraNode.position.y = player1?.position.y as! CGFloat
                    spinWheel.spinDone = false
                    turn = 1
                }
//
////                let move = SKAction.move(to: CGPoint(x: 750, y: 705), duration: 1)
////                print("tes")
////                player2?.run(move)
////                print(spinWheel.value)
//
            }else{
                cameraNode.position.x = spinWheel?.position.x as! CGFloat
                cameraNode.position.y = spinWheel?.position.y as! CGFloat
                
                if turn == 1 {
                    player = player1
                    
                }else if turn == 2 {
//                    player = player2
                    
                }else if turn == 3 {
//                    player = player3
                    
                }else if turn == 4 {
//                    player = player4
                    
                }
        }
    }
    
    func updateWheel(_ currentTime: TimeInterval) {
            
        if spinWheel.wheel.physicsBody!.isResting && spinWheel.wheelState == .spinning {
                
                spinWheel.wheelState = .stopped
                var degree = CGFloat.radiansToDegrees(spinWheel.wheel.zRotation)()
                //print("resting rad? \(wheel.zRotation)")
                //print("resting degree ? \(degree)")
                
                if degree < 0 {
                    degree = 360 + degree
                }
                
                for x in 0..<spinWheel.slots.count {
                    
                    if (degree >= CGFloat(Int(spinWheel.slots[x][2])!)) && (degree <= CGFloat(Int(spinWheel.slots[x][3])!)) {
    //                    print("You landed on \(slots[x][0]) slot and won \(slots[x][0])")
                        value = Int(spinWheel.slots[x][0]) ?? 0
                        
                        run(spinWheel.wonSound)
    //                    sleep(10)
                        var duration = 0

                        if value == 1 {
                            duration = 1
                        }else{
                            duration = value / 2
                        }
                        
                        print(floor)
                        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { (timer) in
                            self.spinWheel.spinDone = true
                            if self.floor + self.value > 25 {
                                if self.floor > 25{
//                                    self.player?.run(SKAction.moveTo(y: CGFloat((self.player?.position.y)! - CGFloat(self.value * 100)), duration: TimeInterval(self.value / 2)))
                                    self.player?.run(SKAction.move(to: CGPoint(x: CGFloat((self.player?.position.x)! - CGFloat(self.value * 59)), y: CGFloat((self.player?.position.y)! - CGFloat(self.value * 100))), duration: TimeInterval(self.value / 2)))
                                    self.floor += self.value
                                    
                                }else {
                                    var moveSpecific = 26 - self.floor
                                    if self.value > moveSpecific {
                                        var newPositionX = 3810
                                        var newPositionY = 600
                                        
                                        var valueSubstract = self.value - moveSpecific
//                                        self.player?.run(SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(moveSpecific * 120)), duration: TimeInterval(duration)))
                                        let moveX = SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(moveSpecific * 120)), duration: TimeInterval(duration))
                                        let movePos = SKAction.move(to: CGPoint(x: CGFloat(newPositionX), y: CGFloat(newPositionY)), duration: 1)
                                        let moveY = SKAction.move(to: CGPoint(x: CGFloat(CGFloat((newPositionX)) - CGFloat(valueSubstract * 60)), y: CGFloat(CGFloat((newPositionY)) - CGFloat(valueSubstract * 100))), duration: TimeInterval(valueSubstract / 2))
//                                        let moveY = SKAction.moveTo(y: CGFloat((self.player?.position.y)! - CGFloat(valueSubstract * 100)), duration: TimeInterval(valueSubstract / 2))
                                        
                                        
//                                        var positionNew = CGFloat((self.player?.position.x)! + CGFloat(moveSpecific * 120))
//
//                                        if self.player?.position.x == positionNew {
//
//
//                                            self.player?.run(SKAction.moveBy(x: CGFloat(newPositionX), y: CGFloat(newPositionY), duration: 1))
//
//
//                                            if self.player?.position.x == CGFloat(newPositionX) && self.player?.position.y == CGFloat(newPositionY) {
//                                                self.player?.run(SKAction.moveTo(y: CGFloat((self.player?.position.y)! + CGFloat(valueSubstract * 100)), duration: TimeInterval(valueSubstract / 2)))
//
//                                            }
                                        let sequenceAction = SKAction.sequence([moveX, movePos, moveY])
                                        self.player?.run(sequenceAction)
                                        
                                        self.floor += self.value
                                    }else{
                                        self.player?.run(SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(self.value * 120)), duration: TimeInterval(duration)))
                                        self.floor += self.value
                                        
                                        if self.floor == 26 {
                                            var newPositionX = 3810
                                            var newPositionY = 600
                                            let movePos = SKAction.move(to: CGPoint(x: CGFloat(newPositionX), y: CGFloat(newPositionY)), duration: 1)
                                        }
                                    }
                                    print(moveSpecific)
                                }
                            }else{
                                self.player?.run(SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(self.value * 120)), duration: TimeInterval(duration)))
                                self.floor += self.value
                            }
                        }
                        
                        
                        
    //
    //                    won(prizeTitle: String(describing: slots[x][0]))
                        
    //                    highlightWin(x)
                        break
                    }
                }
            }
        }
    
    
    
}
