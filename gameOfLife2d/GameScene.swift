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
    var player1 = SKSpriteNode()
    var player2 = SKSpriteNode()
    var player3 = SKSpriteNode()
    var player4 = SKSpriteNode()
    var jobLabel = SKLabelNode()
    var card = SKSpriteNode()
    var graduation = SKSpriteNode()
    var job1 = SKSpriteNode()
    var job2 = SKSpriteNode()
    var job3 = SKSpriteNode()
    var job4 = SKSpriteNode()
    var job5 = SKSpriteNode()
    var job6 = SKSpriteNode()
    var job7 = SKSpriteNode()
    var isTouched2 = false
    var turn = 1
    var player : SKSpriteNode?
    var value = 0
    var floor = 0
    var duration = 0
    var index = 0
    var delegateVC: reloadData?
    var playersScene: [Players] = []
    var mysteryTiles = surprise
    var careerChosen = 0
    var isDisable = false
    
    
//    var gameVC = GameViewController()
    
    //nanti apus kalo udah ada object
    var isCollege = true
    
    private var spinWheel: SpinWheel!
    
    //punya spritekit dimana didmove udah dimasukin ke scene, didload punya uikit
    override func didMove(to view: SKView) {
        delegateVC = self.userData?.value(forKey: "delegate") as! reloadData
        playersScene = self.userData?.value(forKey: "modelPlayer") as! [Players]
        
        
        setupMap()
        setupCamera()
        setupPlayer()
        
        
        print(playersScene[1].name)
        
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
        switch playersScene.count {
        case 2:
            
            if playersScene[0].color == "Red" {
                player1 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charRed")!))
            }else if playersScene[0].color == "Blue"{
                player1 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charBlue")!))
            }else if playersScene[0].color == "Yellow"{
                player1 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charYellow")!))
            }else if playersScene[0].color == "Green"{
                player1 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charGreen")!))
            }
            
            if playersScene[1].color == "Red" {
                player2 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charRed")!))
            }else if playersScene[1].color == "Blue"{
                player2 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charBlue")!))
            }else if playersScene[1].color == "Yellow"{
                player2 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charYellow")!))
            }else if playersScene[1].color == "Green"{
                player2 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charGreen")!))
            }
            
            player1.zPosition = 500
            player1.position = CGPoint(x: 640, y: 340)
            
            player2.zPosition = 500
            player2.position = CGPoint(x: 640, y: 240)
            
            
            addChild(player1)
            addChild(player2)
        case 3:
            
            if playersScene[0].color == "Red" {
                player1 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charRed")!))
            }else if playersScene[0].color == "Blue"{
                player1 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charBlue")!))
            }else if playersScene[0].color == "Yellow"{
                player1 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charYellow")!))
            }else if playersScene[0].color == "Green"{
                player1 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charGreen")!))
            }
            
            if playersScene[1].color == "Red" {
                player2 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charRed")!))
            }else if playersScene[1].color == "Blue"{
                player2 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charBlue")!))
            }else if playersScene[1].color == "Yellow"{
                player2 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charYellow")!))
            }else if playersScene[1].color == "Green"{
                player2 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charGreen")!))
            }
            
            if playersScene[2].color == "Red" {
                player3 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charRed")!))
            }else if playersScene[2].color == "Blue"{
                player3 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charBlue")!))
            }else if playersScene[2].color == "Yellow"{
                player3 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charYellow")!))
            }else if playersScene[2].color == "Green"{
                player3 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charGreen")!))
            }
            
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
            if playersScene[0].color == "Red" {
                player1 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charRed")!))
            }else if playersScene[0].color == "Blue"{
                player1 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charBlue")!))
            }else if playersScene[0].color == "Yellow"{
                player1 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charYellow")!))
            }else if playersScene[0].color == "Green"{
                player1 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charGreen")!))
            }
            
            if playersScene[1].color == "Red" {
                player2 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charRed")!))
            }else if playersScene[1].color == "Blue"{
                player2 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charBlue")!))
            }else if playersScene[1].color == "Yellow"{
                player2 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charYellow")!))
            }else if playersScene[1].color == "Green"{
                player2 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charGreen")!))
            }
            
            if playersScene[2].color == "Red" {
                player3 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charRed")!))
            }else if playersScene[2].color == "Blue"{
                player3 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charBlue")!))
            }else if playersScene[2].color == "Yellow"{
                player3 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charYellow")!))
            }else if playersScene[2].color == "Green"{
                player3 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charGreen")!))
            }
            
            if playersScene[3].color == "Red" {
                player4 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charRed")!))
            }else if playersScene[3].color == "Blue"{
                player4 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charBlue")!))
            }else if playersScene[3].color == "Yellow"{
                player4 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charYellow")!))
            }else if playersScene[3].color == "Green"{
                player4 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charGreen")!))
            }
            
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
            if playersScene[0].color == "Red" {
                player1 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charRed")!))
            }else if playersScene[0].color == "Blue"{
                player1 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charBlue")!))
            }else if playersScene[0].color == "Yellow"{
                player1 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charYellow")!))
            }else if playersScene[0].color == "Green"{
                player1 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charGreen")!))
            }
            
            if playersScene[1].color == "Red" {
                player2 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charRed")!))
            }else if playersScene[1].color == "Blue"{
                player2 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charBlue")!))
            }else if playersScene[1].color == "Yellow"{
                player2 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charYellow")!))
            }else if playersScene[1].color == "Green"{
                player2 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charGreen")!))
            }
            
            if playersScene[2].color == "Red" {
                player3 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charRed")!))
            }else if playersScene[2].color == "Blue"{
                player3 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charBlue")!))
            }else if playersScene[2].color == "Yellow"{
                player3 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charYellow")!))
            }else if playersScene[2].color == "Green"{
                player3 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charGreen")!))
            }
            
            if playersScene[3].color == "Red" {
                player4 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charRed")!))
            }else if playersScene[3].color == "Blue"{
                player4 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charBlue")!))
            }else if playersScene[3].color == "Yellow"{
                player4 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charYellow")!))
            }else if playersScene[3].color == "Green"{
                player4 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "charGreen")!))
            }
            
            
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
            delegateVC?.onReload(index: index, players: playersScene)
        }
        

    }
    
    
    func didBegin(_ contact: SKPhysicsContact) {
        spinWheel.didBegin(contact)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }

        if let node = self.nodes(at: touch.location(in: self)).first as? SKSpriteNode {
        
            if node == card {
                isDisable = false
                card.removeFromParent()
            }else if node == graduation {
                isDisable = false
                graduation.removeFromParent()
                displayJob2()
            }else if node == job1{
                print("job1")
                
                if index == 0 {
                    
                    playersScene[index].isFirstTurn = false
                    playersScene[index].job = Mahasiswa.init()
                    playersScene[index].money -= 8000
                    playersScene[index].isCollege = true
                    print("index:\(index)")
                    index += 1
                    
                }else if index == 1 {
                    
                    playersScene[index].isFirstTurn = false
                    playersScene[index].job = Mahasiswa.init()
                    playersScene[index].money -= 8000
                    playersScene[index].isCollege = true
                    print("index:\(index)")
                    if playersScene.count > 2{
                        index += 1
                    }else{
                        index = 0
                    }
                    
                }else if index == 2 {
                    
                    playersScene[index].isFirstTurn = false
                    playersScene[index].job = Mahasiswa.init()
                    playersScene[index].money -= 8000
                    playersScene[index].isCollege = true
                    print("index:\(index)")
                    if playersScene.count > 3{
                        index += 1
                    }else{
                        index = 0
                    }
                }else if index == 3 {
                    playersScene[index].isFirstTurn = false
                    playersScene[index].job = Mahasiswa.init()
                    playersScene[index].money -= 8000
                    playersScene[index].isCollege = true
                    print("index:\(index)")
                    index = 0
                }
                
                jobLabel.removeFromParent()
                job1.removeFromParent()
                job2.removeFromParent()
                job3.removeFromParent()
                job4.removeFromParent()
//                careerChosen += 1
                
            }else if node == job2 {
                
                                
                if index == 0 {
                                    
                    playersScene[index].isFirstTurn = false
                    playersScene[index].job = Mekanik.init()
                                    
                    index += 1
                                    
                }else if index == 1 {
                    
                    playersScene[index].isFirstTurn = false
                    playersScene[index].job = Mekanik.init()
                                    
                        if playersScene.count > 2{
                            index += 1
                        }else{
                            index = 0
                        }
                                    
                }else if index == 2 {
                                    
                    playersScene[index].isFirstTurn = false
                    playersScene[index].job = Mekanik.init()
                                    
                        if playersScene.count > 3{
                            index += 1
                        }else{
                            index = 0
                        }
                    
                }else if index == 3 {
                        
                    playersScene[index].isFirstTurn = false
                    playersScene[index].job = Mekanik.init()
                                        
                    index = 0
                    
                }
                                
                    jobLabel.removeFromParent()
                    job1.removeFromParent()
                    job2.removeFromParent()
                    job3.removeFromParent()
                    job4.removeFromParent()
//                careerChosen += 1
                
                

            }else if node == job3 {
                
                if index == 0 {
                                    
                    playersScene[index].isFirstTurn = false
                    playersScene[index].job = Police.init()
                                    
                    index += 1
                                    
                }else if index == 1 {
                    
                    playersScene[index].isFirstTurn = false
                    playersScene[index].job = Police.init()
                                    
                        if playersScene.count > 2{
                            index += 1
                        }else{
                            index = 0
                        }
                                    
                    }else if index == 2 {
                                    
                        playersScene[index].isFirstTurn = false
                        playersScene[index].job = Police.init()
                                    
                        if playersScene.count > 3{
                            index += 1
                        }else{
                            index = 0
                        }
                    
                    }else if index == 3 {
                        
                        playersScene[index].isFirstTurn = false
                        playersScene[index].job = Police.init()
                                        
                        index = 0
                    
                    }
                                
                    jobLabel.removeFromParent()
                    job1.removeFromParent()
                    job2.removeFromParent()
                    job3.removeFromParent()
                    job4.removeFromParent()
//                careerChosen += 1
                
            }else if node == job4 {
                
                if index == 0 {
                                    
                    playersScene[index].isFirstTurn = false
                    playersScene[index].job = Youtuber.init()
                                    
                    index += 1
                                    
                }else if index == 1 {
                    
                    playersScene[index].isFirstTurn = false
                    playersScene[index].job = Youtuber.init()
                                    
                        if playersScene.count > 2{
                            index += 1
                        }else{
                            index = 0
                        }
                                    
                    }else if index == 2 {
                                    
                        playersScene[index].isFirstTurn = false
                    playersScene[index].job = Youtuber.init()
                                    
                        if playersScene.count > 3{
                            index += 1
                        }else{
                            index = 0
                        }
                    
                    }else if index == 3 {
                        
                        playersScene[index].isFirstTurn = false
                    playersScene[index].job = Youtuber.init()
                                        
                        index = 0
                    
                    }
                                
                    jobLabel.removeFromParent()
                    job1.removeFromParent()
                    job2.removeFromParent()
                    job3.removeFromParent()
                    job4.removeFromParent()
//                careerChosen += 1

                
                
            }else if node == job5{
                            print("job1")
                            
                            if index == 0 {
                                
                                
                                playersScene[index].job = SoftwareEngineer.init()
                                
                                
                                
                            }else if index == 1 {
                                
                                
                                playersScene[index].job = SoftwareEngineer.init()
                                
                                
                                
                            }else if index == 2 {
                                
                                
                                playersScene[index].job = SoftwareEngineer.init()
                                
                                
                            }else if index == 3 {
                                playersScene[index].job = SoftwareEngineer.init()
                                
                                
                            }
                            self.isDisable = false
                            jobLabel.removeFromParent()
                            job5.removeFromParent()
                            job6.removeFromParent()
                            job7.removeFromParent()
            //                careerChosen += 1
                            
                            }else if node == job6{
                                            
                                            
                                            if index == 0 {
                                                
                                                
                                                playersScene[index].job = Lawyer.init()
                                                
                                                
                                                
                                            }else if index == 1 {
                                                
                                                
                                                playersScene[index].job = Lawyer.init()
                                                
                                                
                                                
                                            }else if index == 2 {
                                                
                                                
                                                playersScene[index].job = Lawyer.init()
                                                
                                                
                                            }else if index == 3 {
                                                
                                                playersScene[index].job = Lawyer.init()
                                                
                                                
                                            }
                                            self.isDisable = false
                                            jobLabel.removeFromParent()
                                            job5.removeFromParent()
                                            job6.removeFromParent()
                                            job7.removeFromParent()
                    }else if node == job7{
                        
                            
                            if index == 0 {
                                
                                
                                playersScene[index].job = Doctor.init()
                                
                                
                                
                            }else if index == 1 {
                                
                                
                                playersScene[index].job = Doctor.init()
                                
                                
                                
                            }else if index == 2 {
                                
                                
                                playersScene[index].job = Doctor.init()
                                
                                
                            }else if index == 3 {
                                
                                playersScene[index].job = Doctor.init()
                                
                                
                            }
                            self.isDisable = false
                            jobLabel.removeFromParent()
                            job5.removeFromParent()
                            job6.removeFromParent()
                            job7.removeFromParent()
            //                careerChosen += 1
                
                //                careerChosen += 1
            }else{
                if isDisable == true{
                    
                }else{
                card.removeFromParent()
                        if playersScene[index].isFirstTurn == true{
                            jobLabel.removeFromParent()
                            job1.removeFromParent()
                            job2.removeFromParent()
                            job3.removeFromParent()
                            job4.removeFromParent()
                            jobLabel = SKLabelNode(text: playersScene[index].name + " please choose your Career : ")
                            jobLabel.position = CGPoint(x: 700, y: 540)
                            jobLabel.fontSize = 60
                            jobLabel.fontName = kGameFont
//                            jobLabel.fontColor = UIColor.black
                            jobLabel.zPosition = 501
                            addChild(jobLabel)
                            
                            job1 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "CollegeStudent(1)")!))
                            job1.zPosition = 501
                            job1.setScale(0.7)
                            job1.position = CGPoint(x: 50, y: 240)
                            addChild(job1)
                            
                            job2 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "Mechanic(1)")!))
                            job2.zPosition = 501
                            job2.setScale(0.7)
                            job2.position = CGPoint(x: 450, y: 240)
                            addChild(job2)
                            
                            
                            job3 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "Police(1)")!))
                            job3.zPosition = 501
                            job3.setScale(0.7)
                            job3.position = CGPoint(x: 850, y: 240)
                            addChild(job3)
                            
                            job4 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "Youtuber(1)")!))
                            job4.zPosition = 501
                            job4.setScale(0.7)
                            job4.position = CGPoint(x: 1250, y: 240)
                            addChild(job4)
                            
                            
                                        
                        }else{
                            
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
                //                if playersScene[index].isFirstTurn == true{
                //                playersScene[index].isFirstTurn = false
                //                print("index:\(index)")
                                    
                                    if turn == 1 {
                                        player = player1
                                        index = 0
                                        floor = playersScene[index].floor
                                        isCollege = playersScene[index].isCollege
                                        turn += 1
                                        
                                    }else if turn == 2 {
                                        player = player2
                                        index = 1
                                        floor = playersScene[index].floor
                                        isCollege = playersScene[index].isCollege
                                        if playersScene.count > 2{
                                            turn += 1
                                        }else{
                                            turn = 1
                                        }
                                        
                                    }else if turn == 3 {
                                        player = player3
                                        index = 2
                                        floor = playersScene[index].floor
                                        isCollege = playersScene[index].isCollege
                                        if playersScene.count > 3{
                                            turn += 1
                                        }else{
                                            turn = 1
                                        }
                                    }else if turn == 4 {
                                        player = player4
                                        index = 3
                                        floor = playersScene[index].floor
                                        isCollege = playersScene[index].isCollege
                                        turn = 1
                                    }
                                
                                cameraNode.position.x = spinWheel?.position.x as! CGFloat
                                cameraNode.position.y = spinWheel?.position.y as! CGFloat
                            }
                        }
                }
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
                        
                        displayCard()
//
//                        if playersScene[index].floor > 4 {
//                            playersScene[index].money += playersScene[index].job.salary
//                            print(playersScene[index].money)
//                        }
                        
                        
                        
                        
                        break
                    }
                }
            }
        }
    
    func moveIn44(){
        if self.floor + self.value > 44 {
            if self.floor > 44 {
                                
                if self.floor + self.value >= 60 {
                                    
                    let lastMove = 60 - self.floor
                        var lastDuration = 1
                                    
                        if lastMove > 1 {
                            lastDuration = lastMove / 2
                        }
                                    
                        // jalan horizontal biasa dari 44 - finish
                        self.player?.run(SKAction.moveTo(x: 590, duration: TimeInterval(lastDuration)))
        //                            self.floor = 60
                        playersScene[index].floor = 60
                                    
                                    
                }else{
                                
                    // jalan horizontal biasa dari 44 - finish
                    self.player?.run(SKAction.moveTo(x: CGFloat(CGFloat((self.player?.position.x)!) - CGFloat(self.value * 120)), duration: TimeInterval(duration)))
        //                            self.floor += self.value
                    playersScene[index].floor += self.value
                }
                                                            
            }else{
                // ngatur player bisa belok ketika berada di floor 44----------------------------------------------------
                                                            
                                                            
                let moveSpecific = 45 - self.floor
                if self.value > moveSpecific {
                    let newPositionX = 2560
                    let newPositionY = -1395
                    let valueSubstract = self.value - moveSpecific
                    var duration2 = 1
                    var duration3 = 1
                    
                    if moveSpecific > 1{
                        duration2 = moveSpecific / 2
                    }
                    
                    if valueSubstract > 1{
                        duration3 = valueSubstract / 2
                    }
                                                                
        //                                let moveY = SKAction.moveTo(y: CGFloat((self.player?.position.y)! - CGFloat(moveSpecific * 60)), duration: TimeInterval(duration))
                    let moveY = SKAction.move(to: CGPoint(x: CGFloat((self.player?.position.x)! - CGFloat(moveSpecific * 60)), y: CGFloat((self.player?.position.y)! - CGFloat(moveSpecific * 100))), duration: TimeInterval(duration2))
                                                                
                    let movePos = SKAction.move(to: CGPoint(x: CGFloat(newPositionX), y: CGFloat(newPositionY)), duration: 1)

                    let moveX = SKAction.moveTo(x: CGFloat(CGFloat((newPositionX)) - CGFloat(valueSubstract * 120)), duration: TimeInterval(duration3))
                                                                

                    let sequenceAction = SKAction.sequence([moveY, movePos, moveX])
                    self.player?.run(sequenceAction)
                                                                
        //                                self.floor += self.value
                    playersScene[index].floor += self.value
                                    
                }else{
                                        //belokin di line 44
                                        //kalo pas dibelokannya
                                        
        //                                self.floor += self.value
                    playersScene[index].floor += self.value
                                        
                    if playersScene[index].floor == 45 {
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
        if self.floor + self.value > 35{
            if self.floor >= 35{
                self.player?.run(SKAction.move(to: CGPoint(x: CGFloat((self.player?.position.x)! - CGFloat(self.value * 60)), y: CGFloat((self.player?.position.y)! - CGFloat(self.value * 100))), duration: TimeInterval(duration)))
                                        
                    //                    self.floor += self.value
                playersScene[index].floor += self.value
                    
            }else{
                    //kurang dari 35
                let moveTo35 = 35 - self.floor
                var duration = 1
                                                
                if moveTo35 > 1 {
                    duration = moveTo35 / 2
                }
                                                
                self.player?.run(SKAction.move(to: CGPoint(x: CGFloat((self.player?.position.x)! - CGFloat(moveTo35 * 60)), y: CGFloat((self.player?.position.y)! - CGFloat(moveTo35 * 100))), duration: TimeInterval(duration)))
                    //                            self.floor = 60
                playersScene[index].floor = 35
                    
                    //INSERT CARD HERE
            }
                
        }else{
                            // jalan vertical biasa dari floor 26 - 44
            self.player?.run(SKAction.move(to: CGPoint(x: CGFloat((self.player?.position.x)! - CGFloat(self.value * 60)), y: CGFloat((self.player?.position.y)! - CGFloat(self.value * 100))), duration: TimeInterval(duration)))
                            
        //                    self.floor += self.value
            playersScene[index].floor += self.value
            }
        }
    }
    
    func movement(){
        if self.floor + self.value > 25 {
            if self.floor > 25{
                                            
                moveIn44()
                                            
            }else if self.floor < 25{
                //ngatur player bisa belok ketika berada di floor 26----------------------------------------------------------
                                            
                stopAt25()
        
            }else if self.floor == 25{
                
                let newPositionX = 3810
                let newPositionY = 600
                let valueSubstract = self.value - 1
                var duration2 = 1
                
                if valueSubstract > 1{
                    duration2 = valueSubstract / 2
                }

//                    let moveX = SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(moveSpecific * 120)), duration: TimeInterval(self.duration))
                                                                            
                let movePos = SKAction.move(to: CGPoint(x: CGFloat(newPositionX), y: CGFloat(newPositionY)), duration: 1)
                
                let moveY = SKAction.move(to: CGPoint(x: CGFloat(CGFloat((newPositionX)) - CGFloat(valueSubstract * 60)), y: CGFloat(CGFloat((newPositionY)) - CGFloat(valueSubstract * 100))), duration: TimeInterval(duration2))

                let sequenceAction = SKAction.sequence([movePos, moveY])
                self.player?.run(sequenceAction)
                                                                            
                        //                        self.floor += self.value
                playersScene[index].floor += self.value
            }
                                        
        
        }else{
            print("sini ????????")
                                        
            // jalan horizontal biasa dari floor 1-25
            if self.value == 1 && self.floor == 0{
                
                self.player?.run(SKAction.move(to: CGPoint(x: 770, y: 705), duration: 1))
//                self.floor += self.value
                playersScene[index].floor += self.value
                                            
            }else if self.value > 1 && self.floor == 0 {
                
                let initialMove = SKAction.move(to: CGPoint(x: 770, y: 705), duration: 1)
                let moveValue = SKAction.moveTo(x: CGFloat(770 + CGFloat((self.value - 1) * 120)), duration: TimeInterval(self.duration))
                self.player?.run(SKAction.sequence([initialMove,moveValue]))
//                self.floor += self.value
                playersScene[index].floor += self.value
                                            
            }else{
                
                self.player?.run(SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(self.value * 120)), duration: TimeInterval(self.duration)))
//                self.floor += self.value
                playersScene[index].floor += self.value
                
                if playersScene[index].floor == 25 {
                    //INSERT CARD HERE
                    isDisable = true
                    let timer = Timer.scheduledTimer(withTimeInterval: Double(duration) + 1.0, repeats: false) { (timer) in
                        self.graduate()
                    }
                }
            }
        }
    }
    
    

    func moveFromCollege(){
        
        if self.floor + self.value > 10 {
            
            if self.floor > 10 {
                
                if self.floor + self.value > 15 {
                    
                    if self.floor > 15 {
                        
                        movement()
                        
                    }else if self.floor < 15{

                        stopAt15()

                    }else if self.floor == 15 {
                        print("sini")
                        let newPositionX = 2570
                        let newPositionY = 705
                        let valueSubstract = self.value - 1
                        var duration2 = 1
                        

                        if valueSubstract > 1{
                            duration2 = valueSubstract / 2
                        }
                        
                        let movePos = SKAction.move(to: CGPoint(x: CGFloat(newPositionX), y: CGFloat(newPositionY)), duration: 1)
                        let moveX = SKAction.moveTo(x: CGFloat(CGFloat((newPositionX)) + CGFloat(valueSubstract * 120)), duration: TimeInterval(duration2))

                        let sequenceAction = SKAction.sequence([movePos,moveX])
                                                            
                                                            
                        self.player?.run(sequenceAction)
                        playersScene[index].floor += self.value
                        
                        
//                        //INSERT CARD HERE
//                        isDisable = true
//                        let timer = Timer.scheduledTimer(withTimeInterval: Double(duration) + 1.0, repeats: false) { (timer) in
//                            self.graduate()
//                        }
                        
                        
                    }
                
                }else{
                    
                    //belokin player di floor 16 pas
//                    self.floor += self.value
                    playersScene[index].floor += self.value
                    
                            
                    if playersScene[index].floor == 16 {
                        let newPositionX = 2570
                        let newPositionY = 705
                        
                        // jalan vertical dari 11 - 16
                        let startMove = SKAction.move(to: CGPoint(x: CGFloat((self.player?.position.x)! + CGFloat(self.value * 60)), y: CGFloat((self.player?.position.y)! + CGFloat(self.value * 100))), duration: TimeInterval(duration))
                                                        
                        let moveEnd = SKAction.move(to: CGPoint(x: CGFloat(newPositionX), y: CGFloat(newPositionY)), duration: 1)
                        
                        self.player?.run(SKAction.sequence([startMove, moveEnd]))
                        
                    }else{
                        print("sini kedua")
                        
                        // jalan vertical dari 11 - 15
                        self.player?.run(SKAction.move(to: CGPoint(x: CGFloat((self.player?.position.x)! + CGFloat(self.value * 60)), y: CGFloat((self.player?.position.y)! + CGFloat(self.value * 100))), duration: TimeInterval(duration)))
                        
                        
                        
                        
                        if playersScene[index].floor == 15 {
                            //INSERT CARD HERE
                            isDisable = true
                            let timer = Timer.scheduledTimer(withTimeInterval: Double(duration) + 1.0, repeats: false) { (timer) in
                                self.graduate()
                            }
                        }
                    }

                }
                                            
                                            
            
            }else{
                
                if self.floor + self.value > 16{
                    //floor 9 dapet 8
                    print("sini ketiga")
                    
                    let moveSpecific = 11 - self.floor
                    let newPositionX = 2260
                    let newPositionY = 205
                    var duration2 = 1
                    var duration3 = 1
                    
                    if moveSpecific > 1{
                        duration2 = moveSpecific / 2
                    }
                    
                                                                                                
                    let moveX = SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(moveSpecific * 120)), duration: TimeInterval(duration2))

                    let movePos = SKAction.move(to: CGPoint(x: CGFloat(newPositionX), y: CGFloat(newPositionY)), duration: 1)
                                                                                                        
                    
                    let valueSubstract = 15 - (self.floor + moveSpecific)
                    
                    if valueSubstract > 1{
                        duration3 = valueSubstract / 2
                    }
                                                                                                        
                    
//                    let move2 = CGFloat((newPositionX)) + CGFloat(valueSubstract * 60)
                                                                                                        
                    
                    let moveY = SKAction.move(to: CGPoint(x: CGFloat(CGFloat((newPositionX)) + CGFloat(valueSubstract * 60)), y: CGFloat(CGFloat((newPositionY)) + CGFloat(valueSubstract * 100))), duration: TimeInterval(duration3))
                                                                                                        
//                    let valueSubstract2 = (self.floor + self.value) - 16
                                                                                                        
//                    let moveX2 = SKAction.moveTo(x: CGFloat(move2 + CGFloat(valueSubstract2 * 120)), duration: TimeInterval(self.duration))
                                                                                                        
                      let sequenceAction = SKAction.sequence([moveX, movePos, moveY])
//                    let sequenceAction = SKAction.sequence([moveX, movePos, moveY, moveX2])
                    
                    self.player?.run(sequenceAction)
                                                                                                        
//                    self.floor += self.value
                    playersScene[index].floor = 15
                    
                    
                    //INSERT CARD HERE
                    isDisable = true
                    let timer = Timer.scheduledTimer(withTimeInterval: Double(duration) + 1.0, repeats: false) { (timer) in
                        self.graduate()
                    }
                                                                                                                                                            
                }else{
                    let moveSpecific = 11 - self.floor
                            
                    if self.value > moveSpecific {
                        let newPositionX = 2260
                        let newPositionY = 205
                        
                        if self.floor + self.value >= 15{
                            print("sini kedelapan")
                            let valueSubstract = 15 - 11
                            var duration2 = 1
                            var duration3 = 1
                            if moveSpecific > 1{
                                duration2 = moveSpecific / 2
                            }
                            
                            if valueSubstract > 1{
                                duration3 = valueSubstract / 2
                            }
                                                                                                                                                
                            let moveX = SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(moveSpecific * 120)), duration: TimeInterval(duration2))
                                                                                                                                                
                            let movePos = SKAction.move(to: CGPoint(x: CGFloat(newPositionX), y: CGFloat(newPositionY)), duration: 1)
                                                                                                                                                
                            let moveY = SKAction.move(to: CGPoint(x: CGFloat(CGFloat((newPositionX)) + CGFloat(valueSubstract * 60)), y: CGFloat(CGFloat((newPositionY)) + CGFloat(valueSubstract * 100))), duration: TimeInterval(duration3))

                            let sequenceAction = SKAction.sequence([moveX, movePos, moveY])
                                                        
                            self.player?.run(sequenceAction)
                                                                                                                                                
                                
                            playersScene[index].floor = 15
                            
                            
                            //INSERT CARD HERE
                            isDisable = true
                            let timer = Timer.scheduledTimer(withTimeInterval: Double(duration) + 1.0, repeats: false) { (timer) in
                                self.graduate()
                            }
                        }else{
                            print("sini ketujuh")
                            let valueSubstract = self.value - moveSpecific
                            var duration2 = 1
                            var duration3 = 1
                            if moveSpecific > 1{
                                duration2 = moveSpecific / 2
                            }
                            
                            if valueSubstract > 1{
                                duration3 = valueSubstract / 2
                            }
                            
                                                                                                                    
                            let moveX = SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(moveSpecific * 120)), duration: TimeInterval(duration2))
                                                                                                                    
                            let movePos = SKAction.move(to: CGPoint(x: CGFloat(newPositionX), y: CGFloat(newPositionY)), duration: 1)
                                                                                                                    
                            let moveY = SKAction.move(to: CGPoint(x: CGFloat(CGFloat((newPositionX)) + CGFloat(valueSubstract * 60)), y: CGFloat(CGFloat((newPositionY)) + CGFloat(valueSubstract * 100))), duration: TimeInterval(duration3))

                            let sequenceAction = SKAction.sequence([moveX, movePos, moveY])
                            
                            self.player?.run(sequenceAction)
                                                                                                                    
    //                        self.floor += self.value
                            playersScene[index].floor += self.value
                        }
                
                    }else{
                        print("sini keenam")
                        //buat belokin di floor 11
                                                                                                                
//                        self.floor += self.value
                        playersScene[index].floor += self.value
                        
                        if playersScene[index].floor == 11 {
                            let newPositionX = 2260
                            let newPositionY = 205
                                                                                                                    
                            let moveEnd = SKAction.move(to: CGPoint(x: CGFloat(newPositionX), y: CGFloat(newPositionY)), duration: 1)
                            
                            let startMove = SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(self.value * 120)), duration: TimeInterval(self.duration))
                            
                            self.player?.run(SKAction.sequence([startMove, moveEnd]))
                                                                                                                    
                        }else{
                            print("sini kelima")
                            
                            self.player?.run(SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(self.value * 120)), duration: TimeInterval(self.duration)))
                                                                                                                    
                        }

                    }
                    
                }
                                            
            }
                                        
                                        
        }else{
                                        
            // jalan horizontal biasa dari floor 1-10
            if self.value == 1 && self.floor == 0{
                self.player?.run(SKAction.move(to: CGPoint(x: 910, y: 115), duration: 1))
                playersScene[index].floor += self.value
                                                
            }else if self.value > 1 && self.floor == 0 {
                
                let initialMove = SKAction.move(to: CGPoint(x: 910, y: 115), duration: 1)
                let moveValue = SKAction.moveTo(x: CGFloat(910 + CGFloat((self.value - 1) * 120)), duration: TimeInterval(self.duration))
                
                self.player?.run(SKAction.sequence([initialMove,moveValue]))
//                print("ini index\(index)")
                playersScene[index].floor += self.value
                
                                                
            }else{
                self.player?.run(SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(self.value * 120)), duration: TimeInterval(self.duration)))
                playersScene[index].floor += self.value
            }
        }

    }
    
    func stopAt15(){
        //tilesnya < 15
        //ini buat berhenti di 15------------------------------
        print("lebih dari 15 SINI")
        let moveSpecific = 15 - self.floor
                                
//        if self.value > moveSpecific {
        //kalo lebih dari 15 berenti
            var duration2 = 1
            
            if moveSpecific > 1{
                duration2 = moveSpecific / 2
            }



            let moveY = SKAction.move(to: CGPoint(x: (player?.position.x)! + CGFloat(moveSpecific * 60), y: (player?.position.y)! + CGFloat(moveSpecific * 100)), duration: TimeInterval(duration2))

        
                                    
                                        
            self.player?.run(moveY)

        
            playersScene[index].floor = 15
            
            //INSERT CARD HERE
            isDisable = true
            let timer = Timer.scheduledTimer(withTimeInterval: Double(duration) + 1.0, repeats: false) { (timer) in
                self.graduate()
            }
                                
//        }else{
//
//            self.player?.run(SKAction.move(to: CGPoint(x: (player?.position.x)! + CGFloat(moveSpecific * 60), y: (player?.position.y)! + CGFloat(moveSpecific * 100)), duration: TimeInterval(moveSpecific / 2)))
//
//
//            playersScene[index].floor += self.value
//
//        }
        
    }
    
    func stopAt25(){
        let moveSpecific = 25 - self.floor
        var duration2 = 1
        
        if moveSpecific > 1{
            duration2 = moveSpecific / 2
        }
//                            if self.value > moveSpecific {
//                                let newPositionX = 3810
//                                let newPositionY = 600
//                                let valueSubstract = self.value - moveSpecific

        let moveX = SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(moveSpecific * 120)), duration: TimeInterval(duration2))
                                                            
//                                let movePos = SKAction.move(to: CGPoint(x: CGFloat(newPositionX), y: CGFloat(newPositionY)), duration: 1)
//
//                                let moveY = SKAction.move(to: CGPoint(x: CGFloat(CGFloat((newPositionX)) - CGFloat(valueSubstract * 60)), y: CGFloat(CGFloat((newPositionY)) - CGFloat(valueSubstract * 100))), duration: TimeInterval(valueSubstract / 2))

//                                let sequenceAction = SKAction.sequence([moveX, movePos, moveY])
        self.player?.run(moveX)
                                                            
        //                        self.floor += self.value
        playersScene[index].floor = 25
                                
//                            }else{
//                                //belokin player di line 26 pas
//
//
//        //                        self.floor += self.value
//                                playersScene[index].floor += self.value
//
//
//                                if playersScene[index].floor == 26 {
//                                    let newPositionX = 3810
//                                    let newPositionY = 600
//
//                                    let startMove = SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(self.value * 120)), duration: TimeInterval(self.duration))
//
//                                    let moveEnd = SKAction.move(to: CGPoint(x: CGFloat(newPositionX), y: CGFloat(newPositionY)), duration: 1)
//                                    self.player?.run(SKAction.sequence([startMove, moveEnd]))
//                                }else{
//
//                                    self.player?.run(SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(self.value * 120)), duration: TimeInterval(self.duration)))
//                                }
//                                let moveX = SKAction.moveTo(x: CGFloat((self.player?.position.x)! + CGFloat(moveSpecific * 120)), duration: TimeInterval(self.duration))
//                        }
        
        
        
        //INSERT CARD HERE
        isDisable = true
        let timer = Timer.scheduledTimer(withTimeInterval: Double(duration) + 1.0, repeats: false) { (timer) in
            self.married()
        }
    }
    
    
    func displayCard(){
        self.isDisable = true
        let timer = Timer.scheduledTimer(withTimeInterval: Double(self.duration) + 1.0, repeats: false) { (timer) in
            for (i,_) in self.mysteryTiles.enumerated() {
                if self.playersScene[self.index].floor == self.mysteryTiles[i].floor
                    && self.playersScene[self.index].job.name == self.mysteryTiles[i].job{
//                    print(self.mysteryTiles[i].image)
                        
                        self.card = SKSpriteNode(texture: SKTexture(image: UIImage(named: self.mysteryTiles[i].image)!))
                        self.card.zPosition = 502
                        self.card.position = CGPoint(x: CGFloat((self.player?.position.x)!), y: CGFloat((self.player?.position.y)!))
                        self.addChild(self.card)
                    
                        if self.mysteryTiles[i].isIncrease == true{
                            self.playersScene[self.index].money += self.mysteryTiles[i].value
                        }else{
                            self.playersScene[self.index].money -= self.mysteryTiles[i].value
                        }
                        
//                        self.isDisable = true
                    
                }else if self.playersScene[self.index].floor == self.mysteryTiles[i].floor && self.mysteryTiles[i].job == ""{
                    if self.mysteryTiles[i].name == "Pandemic" {
                        
                        self.card = SKSpriteNode(texture: SKTexture(image: UIImage(named: self.mysteryTiles[i].image)!))
                        self.card.zPosition = 502
                        self.card.position = CGPoint(x: CGFloat((self.player?.position.x)!), y: CGFloat((self.player?.position.y)!))
                        self.addChild(self.card)
                        
                        if self.playersScene[self.index].job.name == "Doctor" {
                            self.playersScene[self.index].money += 30000
                        }else{
                            self.playersScene[self.index].money -= self.mysteryTiles[i].value
                        }
                        
                    }else if self.mysteryTiles[i].name == "Social BreakOut" {
                        
                        self.card = SKSpriteNode(texture: SKTexture(image: UIImage(named: self.mysteryTiles[i].image)!))
                        self.card.zPosition = 502
                        self.card.position = CGPoint(x: CGFloat((self.player?.position.x)!), y: CGFloat((self.player?.position.y)!))
                        self.addChild(self.card)
                        
                        if self.playersScene[self.index].job.name == "Police" {
                            self.playersScene[self.index].money += 20000
                        }else{
                            self.playersScene[self.index].money -= self.mysteryTiles[i].value
                        }
                        
                    }else if self.mysteryTiles[i].name == "Car Accident" {
                        
                        self.card = SKSpriteNode(texture: SKTexture(image: UIImage(named: self.mysteryTiles[i].image)!))
                        self.card.zPosition = 502
                        self.card.position = CGPoint(x: CGFloat((self.player?.position.x)!), y: CGFloat((self.player?.position.y)!))
                        self.addChild(self.card)
                        
                        if self.playersScene[self.index].job.name == "Mekanik" {
                            self.playersScene[self.index].money += 0
                        }else{
                            self.playersScene[self.index].money -= self.mysteryTiles[i].value
                        }
                        
                    }else if self.mysteryTiles[i].name == "Baby" {
                        
                        self.card = SKSpriteNode(texture: SKTexture(image: UIImage(named: self.mysteryTiles[i].image)!))
                        self.card.zPosition = 502
                        self.card.position = CGPoint(x: CGFloat((self.player?.position.x)!), y: CGFloat((self.player?.position.y)!))
                        self.addChild(self.card)
                        
                        self.playersScene[self.index].child += 1
                    
                    }else if self.mysteryTiles[i].name == "Children Education" && self.playersScene[self.index].child > 0{
                        
                        self.card = SKSpriteNode(texture: SKTexture(image: UIImage(named: self.mysteryTiles[i].image)!))
                        self.card.zPosition = 502
                        self.card.position = CGPoint(x: CGFloat((self.player?.position.x)!), y: CGFloat((self.player?.position.y)!))
                        self.addChild(self.card)
                        
                        if self.mysteryTiles[i].isIncrease == true{
                            self.playersScene[self.index].money += self.mysteryTiles[i].value
                        }else{
                            self.playersScene[self.index].money -= self.mysteryTiles[i].value
                        }
                        
                    }else{
                        
                        self.card = SKSpriteNode(texture: SKTexture(image: UIImage(named: self.mysteryTiles[i].image)!))
                        self.card.zPosition = 502
                        self.card.position = CGPoint(x: CGFloat((self.player?.position.x)!), y: CGFloat((self.player?.position.y)!))
                        self.addChild(self.card)
                        
                        if self.mysteryTiles[i].isIncrease == true{
                            self.playersScene[self.index].money += self.mysteryTiles[i].value
                        }else{
                            self.playersScene[self.index].money -= self.mysteryTiles[i].value
                        }
                    }
                    
//                    self.isDisable = true
                    
                }
   
            }
                
            if self.playersScene[self.index].floor >= 4 && self.playersScene[self.index].isPayyed == 0{
                self.playersScene[self.index].money += self.playersScene[self.index].job.salary
                self.playersScene[self.index].isPayyed += 1
                
                
            }
            
            if self.playersScene[self.index].floor >= 8 && self.playersScene[self.index].isPayyed == 1{ //gajian kedua
                self.playersScene[self.index].money += self.playersScene[self.index].job.salary
                self.playersScene[self.index].isPayyed += 1
            
            }
            
            if self.playersScene[self.index].floor >= 12 && self.playersScene[self.index].isPayyed == 2{
                self.playersScene[self.index].money += self.playersScene[self.index].job.salary
                self.playersScene[self.index].isPayyed += 1
            
            }
            
            if self.playersScene[self.index].floor >= 16 && self.playersScene[self.index].isPayyed == 3{
                self.playersScene[self.index].money += self.playersScene[self.index].job.salary
                self.playersScene[self.index].isPayyed += 1
                
            }
            
            if self.playersScene[self.index].floor >= 20 && self.playersScene[self.index].isPayyed == 4{
                self.playersScene[self.index].money += self.playersScene[self.index].job.salary
                self.playersScene[self.index].isPayyed += 1
                
            }
            
            if self.playersScene[self.index].floor >= 24 && self.playersScene[self.index].isPayyed == 5{
                self.playersScene[self.index].money += self.playersScene[self.index].job.salary
                self.playersScene[self.index].isPayyed += 1
                
            }
            
            if self.playersScene[self.index].floor >= 28 && self.playersScene[self.index].isPayyed == 6{
                self.playersScene[self.index].money += self.playersScene[self.index].job.salary
                self.playersScene[self.index].isPayyed += 1
                
            }
            
            if self.playersScene[self.index].floor >= 32 && self.playersScene[self.index].isPayyed == 7{
                self.playersScene[self.index].money += self.playersScene[self.index].job.salary
                self.playersScene[self.index].isPayyed += 1
                
            }
            
            if self.playersScene[self.index].floor >= 36 && self.playersScene[self.index].isPayyed == 8{
                self.playersScene[self.index].money += self.playersScene[self.index].job.salary
                self.playersScene[self.index].isPayyed += 1
            
            }
            
            if self.playersScene[self.index].floor >= 40 && self.playersScene[self.index].isPayyed == 9{
                self.playersScene[self.index].money += self.playersScene[self.index].job.salary
                self.playersScene[self.index].isPayyed += 1
            
            }
            
            if self.playersScene[self.index].floor >= 44 && self.playersScene[self.index].isPayyed == 10{
                self.playersScene[self.index].money += self.playersScene[self.index].job.salary
                self.playersScene[self.index].isPayyed += 1
            
            }
            
            if self.playersScene[self.index].floor >= 48 && self.playersScene[self.index].isPayyed == 11{
                self.playersScene[self.index].money += self.playersScene[self.index].job.salary
                self.playersScene[self.index].isPayyed += 1
            
            }
            
            if self.playersScene[self.index].floor >= 52 && self.playersScene[self.index].isPayyed == 12{
                self.playersScene[self.index].money += self.playersScene[self.index].job.salary
                self.playersScene[self.index].isPayyed += 1
            
            }
            
            if self.playersScene[self.index].floor >= 56 && self.playersScene[self.index].isPayyed == 13{
                self.playersScene[self.index].money += self.playersScene[self.index].job.salary
                self.playersScene[self.index].isPayyed += 1
            
            }
            
            if self.playersScene[self.index].floor >= 60 && self.playersScene[self.index].isPayyed == 14{
                self.playersScene[self.index].money += self.playersScene[self.index].job.salary
                self.playersScene[self.index].isPayyed += 1
            }
            
            
            
            
            
        }
        _ = Timer.scheduledTimer(withTimeInterval: 15, repeats: false) { (timer) in
            self.isDisable = false
            self.card.removeFromParent()
        }
    }
    
    
    
    func displayJob2(){
                                    jobLabel.removeFromParent()
                                    job5.removeFromParent()
                                    job6.removeFromParent()
                                    job7.removeFromParent()
                                    
                                    jobLabel = SKLabelNode(text: playersScene[index].name + " please choose your next Career : ")
                                    jobLabel.position = CGPoint(x: CGFloat((self.player?.position.x)!), y: CGFloat((self.player?.position.y)! + 300))
                                    jobLabel.fontSize = 60
                                    jobLabel.fontName = kGameFont
        //                            jobLabel.fontColor = UIColor.black
                                    jobLabel.zPosition = 501
                                    addChild(jobLabel)
                                    
                                    job5 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "SoftwareEngineer(1)")!))
                                    job5.zPosition = 502
                                    job5.setScale(0.7)
                                    job5.position = CGPoint(x: CGFloat((self.player?.position.x)! - 500), y: CGFloat((self.player?.position.y)!))
                                    addChild(job5)
                                    
                                    job6 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "Lawyer(1)")!))
                                    job6.zPosition = 502
                                    job6.setScale(0.7)
                                    job6.position = CGPoint(x: CGFloat((self.player?.position.x)! - 100), y: CGFloat((self.player?.position.y)!))
                                    addChild(job6)
                                    
                                    
                                    job7 = SKSpriteNode(texture: SKTexture(image: UIImage(named: "Doctor(1)")!))
                                    job7.zPosition = 502
                                    job7.setScale(0.7)
                                    job7.position = CGPoint(x: CGFloat((self.player?.position.x)! + 300), y: CGFloat((self.player?.position.y)!))
                                    addChild(job7)
                                    
                                    self.isDisable = true
    }

    func graduate(){
            graduation = SKSpriteNode(texture: SKTexture(image: UIImage(named: "CollegeStudent(3)")!))
            graduation.zPosition = 502
            graduation.position = CGPoint(x: CGFloat((self.player?.position.x)!), y: CGFloat((self.player?.position.y)!))
            addChild(graduation)
        
            
            
//            self.isDisable = true
    }
    
    func married(){
            card = SKSpriteNode(texture: SKTexture(image: UIImage(named: "Married")!))
            card.zPosition = 502
            card.position = CGPoint(x: CGFloat((self.player?.position.x)!), y: CGFloat((self.player?.position.y)!))
            addChild(card)
            self.playersScene[self.index].isMarried = true
        
            
            
//            self.isDisable = true
        
    }
}
