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
    var player1 = SKSpriteNode(color: SKColor.black, size: CGSize(width: 100, height: 80))
    var player2 = SKSpriteNode(color: SKColor.blue, size: CGSize(width: 100, height: 80))
    var player3 = SKSpriteNode(color: SKColor.red, size: CGSize(width: 100, height: 80))
    var player4 = SKSpriteNode(color: SKColor.yellow, size: CGSize(width: 100, height: 80))
    var isTouched2 = false
    var turn = 1
    var player : SKSpriteNode?
    var value = 0
    var floor = 0
    var duration = 0
    var index = 0
    
    
    var gameVC = GameViewController()
    
    //nanti apus kalo udah ada object
    var isCollege = true
    var isFirstMove = true
    
    private var spinWheel: SpinWheel!
    
    //punya spritekit dimana didmove udah dimasukin ke scene, didload punya uikit
    override func didMove(to view: SKView) {
        setupMap()
        setupCamera()
        setupPlayer()
        
        
        print(gameVC.players[1].name)
        
        cameraNode.position.x = player1.position.x as! CGFloat
        cameraNode.position.y = player1.position.y as! CGFloat
        
        self.physicsWorld.contactDelegate = self
        displaySpinWheel()
        
    }
    
    func setupPlayer(){
//        let player1 = SKSpriteNode()
//        let player2 = SKSpriteNode()
//        let player3 = SKSpriteNode()
//        let player4 = SKSpriteNode()
        switch gameVC.players.count {
        case 2:
            player1.zPosition = 500
            player1.position = CGPoint(x: 640, y: 340)
            
            player2.zPosition = 500
            player2.position = CGPoint(x: 640, y: 240)
            
            addChild(player1)
            addChild(player2)
        case 3:
            player1.zPosition = 500
            player1.position = CGPoint(x: 640, y: 340)
            
            player2.zPosition = 500
            player2.position = CGPoint(x: 640, y: 240)
            
            player3.zPosition = 500
            player3.position = CGPoint(x: 640, y: 140)
            
            addChild(player1)
            addChild(player2)
            addChild(player3)
        case 4:
            player1.zPosition = 500
            player1.position = CGPoint(x: 640, y: 340)
            
            player2.zPosition = 500
            player2.position = CGPoint(x: 640, y: 240)
            
            player3.zPosition = 500
            player3.position = CGPoint(x: 640, y: 140)
            
            player4.zPosition = 500
            player4.position = CGPoint(x: 640, y: 40)
            
            addChild(player1)
            addChild(player2)
            addChild(player3)
            addChild(player4)
        default:
            player1.zPosition = 500
            player1.position = CGPoint(x: 640, y: 340)
            
            player2.zPosition = 500
            player2.position = CGPoint(x: 640, y: 240)
            
            player3.zPosition = 500
            player3.position = CGPoint(x: 640, y: 140)
            
            player4.zPosition = 500
            player4.position = CGPoint(x: 640, y: 40)
            
            addChild(player1)
            addChild(player2)
            addChild(player3)
            addChild(player4)
        }
        
        
//        player1 = childNode(withName: "player1") as? SKSpriteNode
//        player2 = childNode(withName: "player2") as? SKSpriteNode
//        player3 = childNode(withName: "player3") as? SKSpriteNode
//        player4 = childNode(withName: "player4") as? SKSpriteNode
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
    }
    
    
    func didBegin(_ contact: SKPhysicsContact) {
        spinWheel.didBegin(contact)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            if spinWheel.spinDone == true {
                if turn == 1{
                    cameraNode.position.x = player1.position.x as! CGFloat
                    cameraNode.position.y = player1.position.y as! CGFloat
                    spinWheel.spinDone = false
                }else if turn == 2{
                    cameraNode.position.x = player2.position.x as! CGFloat
                    cameraNode.position.y = player2.position.y as! CGFloat
                    spinWheel.spinDone = false

                    
                }else if turn == 3{
                    cameraNode.position.x = player3.position.x as! CGFloat
                    cameraNode.position.y = player3.position.y as! CGFloat
                    spinWheel.spinDone = false
                    
                }else if turn == 4{
                    cameraNode.position.x = player4.position.x as! CGFloat
                    cameraNode.position.y = player4.position.y as! CGFloat
                    spinWheel.spinDone = false
                }

            }else{
                cameraNode.position.x = spinWheel?.position.x as! CGFloat
                cameraNode.position.y = spinWheel?.position.y as! CGFloat
                
                if turn == 1 {
                    player = player1
                    index = 0
                    floor = gameVC.players[index].floor
                    turn += 1
                }else if turn == 2 {
                    player = player2
                    index = 1
                    floor = gameVC.players[index].floor
                    if gameVC.players.count > 2{
                        turn += 1
                    }else{
                        turn = 1
                    }
                }else if turn == 3 {
                    player = player3
                    index = 2
                    floor = gameVC.players[index].floor
                    turn += 1
                    if gameVC.players.count > 3{
                        turn += 1
                    }else{
                        turn = 1
                    }
                }else if turn == 4 {
                    player = player4
                    index = 3
                    floor = gameVC.players[index].floor
                    turn = 1
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
                        duration = 0

                        if value == 1 {
                            duration = 1
                        }else{
                            duration = value / 2
                        }
                        print(floor)
                        
                        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { (timer) in
                            self.spinWheel.spinDone = true
                    
                            if self.isCollege == false {
                                self.movement()
                            }else{
                                self.moveFromCollege()
                            }
                        }
                        
                        
                        
                        break
                    }
                }
            }
        }
    
    
    func movement(){
        if self.floor + self.value > 25 {
            if self.floor > 25{
                                            
                if self.floor + self.value > 44 {
                    if self.floor > 44 {
                        
                        if self.floor + self.value > 60 {
                            
                            let lastMove = 60 - self.floor
                            var lastDuration = 1
                            
                            if lastMove > 1 {
                                lastDuration = lastMove / 2
                            }
                            
                            // jalan horizontal biasa dari 44 - finish
                            self.player?.run(SKAction.moveTo(x: 590, duration: TimeInterval(lastDuration)))
//                            self.floor = 60
                            gameVC.players[index].floor = 60
                            
                            
                        }else{
                        
                            // jalan horizontal biasa dari 44 - finish
                            self.player?.run(SKAction.moveTo(x: CGFloat(CGFloat((self.player?.position.x)!) - CGFloat(self.value * 120)), duration: TimeInterval(duration)))
//                            self.floor += self.value
                            gameVC.players[index].floor += self.value
                        }
                                                    
                    }else{
                        // ngatur player bisa belok ketika berada di floor 44----------------------------------------------------
                                                    
                                                    
                        let moveSpecific = 45 - self.floor
                            if self.value > moveSpecific {
                                let newPositionX = 2560
                                let newPositionY = -1395
                                let valueSubstract = self.value - moveSpecific
                                                        
//                                let moveY = SKAction.moveTo(y: CGFloat((self.player?.position.y)! - CGFloat(moveSpecific * 60)), duration: TimeInterval(duration))
                                let moveY = SKAction.move(to: CGPoint(x: CGFloat((self.player?.position.x)! - CGFloat(moveSpecific * 60)), y: CGFloat((self.player?.position.y)! - CGFloat(moveSpecific * 100))), duration: TimeInterval(duration))
                                                        
                                let movePos = SKAction.move(to: CGPoint(x: CGFloat(newPositionX), y: CGFloat(newPositionY)), duration: 1)

                                let moveX = SKAction.moveTo(x: CGFloat(CGFloat((newPositionX)) - CGFloat(valueSubstract * 120)), duration: TimeInterval(valueSubstract / 2))
                                                        

                                let sequenceAction = SKAction.sequence([moveY, movePos, moveX])
                                self.player?.run(sequenceAction)
                                                        
//                                self.floor += self.value
                                gameVC.players[index].floor += self.value
                            
                            }else{
                                //belokin di line 44
                                //kalo pas dibelokannya
                                
//                                self.floor += self.value
                                gameVC.players[index].floor += self.value
                                
                                if gameVC.players[index].floor == 45 {
                                    let newPositionX = 2560
                                    let newPositionY = -1395
                                    
//                                    let startMove = SKAction.moveTo(y: CGFloat((self.player?.position.y)! - CGFloat(self.value * 60)), duration: TimeInterval(duration))
                                    let startMove = SKAction.move(to: CGPoint(x: CGFloat((self.player?.position.x)! - CGFloat(self.value * 60)), y: CGFloat((self.player?.position.y)! - CGFloat(self.value * 100))), duration: TimeInterval(duration))
                                    
                                    let moveEnd = SKAction.move(to: CGPoint(x: CGFloat(newPositionX), y: CGFloat(newPositionY)), duration: 1)
                                    
                                    self.player?.run(SKAction.sequence([startMove,moveEnd]))
                                }else{
//                                    self.player?.run(SKAction.moveTo(y: CGFloat((self.player?.position.y)! - CGFloat(self.value * 60)), duration: TimeInterval(duration)))
                                    self.player?.run(SKAction.move(to: CGPoint(x: CGFloat((self.player?.position.x)! - CGFloat(self.value * 60)), y: CGFloat((self.player?.position.y)! - CGFloat(self.value * 100))), duration: TimeInterval(duration)))
                                }
                            }
                                                    
                                                    
                    }
                
                }else{
                    // jalan vertical biasa dari floor 26 - 44
                    self.player?.run(SKAction.move(to: CGPoint(x: CGFloat((self.player?.position.x)! - CGFloat(self.value * 60)), y: CGFloat((self.player?.position.y)! - CGFloat(self.value * 100))), duration: TimeInterval(duration)))
                    
//                    self.floor += self.value
                    gameVC.players[index].floor += self.value
                }
                                            
            }else {
                //ngatur player bisa belok ketika berada di floor 26----------------------------------------------------------
                                            
                let moveSpecific = 26 - self.floor
                    if self.value > moveSpecific {
                        let newPositionX = 3810
                        let newPositionY = 600
                        let valueSubstract = self.value - moveSpecific

                        let moveX = SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(moveSpecific * 120)), duration: TimeInterval(self.duration))
                                                    
                        let movePos = SKAction.move(to: CGPoint(x: CGFloat(newPositionX), y: CGFloat(newPositionY)), duration: 1)
                                                    
                        let moveY = SKAction.move(to: CGPoint(x: CGFloat(CGFloat((newPositionX)) - CGFloat(valueSubstract * 60)), y: CGFloat(CGFloat((newPositionY)) - CGFloat(valueSubstract * 100))), duration: TimeInterval(valueSubstract / 2))

                        let sequenceAction = SKAction.sequence([moveX, movePos, moveY])
                        self.player?.run(sequenceAction)
                                                    
//                        self.floor += self.value
                        gameVC.players[index].floor += self.value
                        
                    }else{
                        //belokin player di line 26 pas
                        
                        
//                        self.floor += self.value
                        gameVC.players[index].floor += self.value

                                                    
                        if gameVC.players[index].floor == 26 {
                            let newPositionX = 3810
                            let newPositionY = 600
                            
                            let startMove = SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(self.value * 120)), duration: TimeInterval(self.duration))
                                                        
                            let moveEnd = SKAction.move(to: CGPoint(x: CGFloat(newPositionX), y: CGFloat(newPositionY)), duration: 1)
                            self.player?.run(SKAction.sequence([startMove, moveEnd]))
                        }else{
                            
                            self.player?.run(SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(self.value * 120)), duration: TimeInterval(self.duration)))
                        }
                    
                }
        
            }
                                        
        
        }else{
                                        
            // jalan horizontal biasa dari floor 1-25
            if self.value == 1 && self.floor == 0{
                
                self.player?.run(SKAction.move(to: CGPoint(x: 770, y: 705), duration: 1))
//                self.floor += self.value
                gameVC.players[index].floor += self.value
                                            
            }else if self.value > 1 && self.floor == 0 {
                
                let initialMove = SKAction.move(to: CGPoint(x: 770, y: 705), duration: 1)
                let moveValue = SKAction.moveTo(x: CGFloat(770 + CGFloat((self.value - 1) * 120)), duration: TimeInterval(self.duration))
                self.player?.run(SKAction.sequence([initialMove,moveValue]))
//                self.floor += self.value
                gameVC.players[index].floor += self.value
                                            
            }else{
                
                self.player?.run(SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(self.value * 120)), duration: TimeInterval(self.duration)))
//                self.floor += self.value
                gameVC.players[index].floor += self.value
            }
        }
    }
    
    

    func moveFromCollege(){
        
        if self.floor + self.value > 10 {
            
            if self.floor > 10 {
                
                if self.floor + self.value > 15 {
                    
                    if self.floor > 15 {
                        
                        movement()
                        
                    }else{


                        let moveSpecific = 16 - self.floor
                        
                        if self.value > moveSpecific {
                            let newPositionX = 2570
                            let newPositionY = 705
                            let valueSubstract = self.value - moveSpecific

                            let moveX = SKAction.moveTo(x: CGFloat(CGFloat((newPositionX)) + CGFloat(valueSubstract * 120)), duration: TimeInterval(self.duration))

                            let movePos = SKAction.move(to: CGPoint(x: CGFloat(newPositionX), y: CGFloat(newPositionY)), duration: 1)

                            let moveY = SKAction.move(to: CGPoint(x: (player?.position.x)! + CGFloat(moveSpecific * 60), y: (player?.position.y)! + CGFloat(moveSpecific * 100)), duration: TimeInterval(moveSpecific / 2))

                            let sequenceAction = SKAction.sequence([moveY, movePos, moveX])
                            
                            self.player?.run(sequenceAction)

//                            self.floor += self.value
                            gameVC.players[index].floor += self.value
                        
                        }else{
                            
                            self.player?.run(SKAction.move(to: CGPoint(x: (player?.position.x)! + CGFloat(moveSpecific * 60), y: (player?.position.y)! + CGFloat(moveSpecific * 100)), duration: TimeInterval(moveSpecific / 2)))
                            
//                            self.floor += self.value
                            gameVC.players[index].floor += self.value

                        }


                    }
                
                }else{
                    
                    //belokin player di floor 16 pas
//                    self.floor += self.value
                    gameVC.players[index].floor += self.value
                    
                            
                    if gameVC.players[index].floor == 16 {
                        let newPositionX = 2570
                        let newPositionY = 705
                        
                        // jalan vertical dari 11 - 16
                        let startMove = SKAction.move(to: CGPoint(x: CGFloat((self.player?.position.x)! + CGFloat(self.value * 60)), y: CGFloat((self.player?.position.y)! + CGFloat(self.value * 100))), duration: TimeInterval(duration))
                                                        
                        let moveEnd = SKAction.move(to: CGPoint(x: CGFloat(newPositionX), y: CGFloat(newPositionY)), duration: 1)
                        
                        self.player?.run(SKAction.sequence([startMove, moveEnd]))
                    }else{
                        
                        
                        // jalan vertical dari 11 - 16
                        self.player?.run(SKAction.move(to: CGPoint(x: CGFloat((self.player?.position.x)! + CGFloat(self.value * 60)), y: CGFloat((self.player?.position.y)! + CGFloat(self.value * 100))), duration: TimeInterval(duration)))
                    }

                }
                                            
                                            
            
            }else{
                
                if self.floor + self.value > 16{
                    //floor 9 dapet 8
                    
                    let moveSpecific = 11 - self.floor
                    let newPositionX = 2260
                    let newPositionY = 205
                                                
                                                                                                
                    let moveX = SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(moveSpecific * 120)), duration: TimeInterval(self.duration))

                    let movePos = SKAction.move(to: CGPoint(x: CGFloat(newPositionX), y: CGFloat(newPositionY)), duration: 1)
                                                                                                        
                    
                    let valueSubstract = 16 - (self.floor + moveSpecific)
                                                                                                        
                    
                    let move2 = CGFloat((newPositionX)) + CGFloat(valueSubstract * 60)
                                                                                                        
                    
                    let moveY = SKAction.move(to: CGPoint(x: CGFloat(CGFloat((newPositionX)) + CGFloat(valueSubstract * 60)), y: CGFloat(CGFloat((newPositionY)) + CGFloat(valueSubstract * 100))), duration: TimeInterval(valueSubstract / 2))
                                                                                                        
                    let valueSubstract2 = (self.floor + self.value) - 16
                                                                                                        
                    let moveX2 = SKAction.moveTo(x: CGFloat(move2 + CGFloat(valueSubstract2 * 120)), duration: TimeInterval(self.duration))
                                                                                                        
                                                                                                        
                    let sequenceAction = SKAction.sequence([moveX, movePos, moveY, moveX2])
                    
                    self.player?.run(sequenceAction)
                                                                                                        
//                    self.floor += self.value
                    gameVC.players[index].floor += self.value
                                                                                                                                                            
                }else{
                    let moveSpecific = 11 - self.floor
                            
                    if self.value > moveSpecific {
                        let newPositionX = 2260
                        let newPositionY = 205
                        let valueSubstract = self.value - moveSpecific
                                                                                                                
                        let moveX = SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(moveSpecific * 120)), duration: TimeInterval(self.duration))
                                                                                                                
                        let movePos = SKAction.move(to: CGPoint(x: CGFloat(newPositionX), y: CGFloat(newPositionY)), duration: 1)
                                                                                                                
                        let moveY = SKAction.move(to: CGPoint(x: CGFloat(CGFloat((newPositionX)) + CGFloat(valueSubstract * 60)), y: CGFloat(CGFloat((newPositionY)) + CGFloat(valueSubstract * 100))), duration: TimeInterval(valueSubstract / 2))

                        let sequenceAction = SKAction.sequence([moveX, movePos, moveY])
                        
                        self.player?.run(sequenceAction)
                                                                                                                
//                        self.floor += self.value
                        gameVC.players[index].floor += self.value
                
                    }else{
                        //buat belokin di floor 11
                                                                                                                
//                        self.floor += self.value
                        gameVC.players[index].floor += self.value
                        
                        if gameVC.players[index].floor == 11 {
                            let newPositionX = 2260
                            let newPositionY = 205
                                                                                                                    
                            let moveEnd = SKAction.move(to: CGPoint(x: CGFloat(newPositionX), y: CGFloat(newPositionY)), duration: 1)
                            
                            let startMove = SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(self.value * 120)), duration: TimeInterval(self.duration))
                            
                            self.player?.run(SKAction.sequence([startMove, moveEnd]))
                                                                                                                    
                        }else{
                            
                            self.player?.run(SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(self.value * 120)), duration: TimeInterval(self.duration)))
                                                                                                                    
                        }

                    }
                    
                }
                                            
            }
                                        
                                        
        }else{
                                        
            // jalan horizontal biasa dari floor 1-10
            if self.value == 1 && self.floor == 0{
                self.player?.run(SKAction.move(to: CGPoint(x: 910, y: 115), duration: 1))
                gameVC.players[index].floor += self.value
                                                
            }else if self.value > 1 && self.floor == 0 {
                
                let initialMove = SKAction.move(to: CGPoint(x: 910, y: 115), duration: 1)
                let moveValue = SKAction.moveTo(x: CGFloat(910 + CGFloat((self.value - 1) * 120)), duration: TimeInterval(self.duration))
                
                self.player?.run(SKAction.sequence([initialMove,moveValue]))
//                print("ini index\(index)")
                gameVC.players[index].floor += self.value
                
                                                
            }else{
                self.player?.run(SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(self.value * 120)), duration: TimeInterval(self.duration)))
                gameVC.players[index].floor += self.value
            }
        }

    }
    
}
