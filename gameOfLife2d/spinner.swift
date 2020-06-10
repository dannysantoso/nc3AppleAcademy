//
//  spinner.swift
//  gameOfLife2d
//
//  Created by danny santoso on 10/06/20.
//  Copyright © 2020 danny santoso. All rights reserved.
//

import Foundation
import SpriteKit

enum spinnerState: Int{
    case stopped
    case ready
    case spinning
    case waiting
}

class Spinner: SKSpriteNode {
    
    var wheel: SKSpriteNode!
    var flapper: SKSpriteNode!
    var pivotPin: SKSpriteNode!
    var springPin: SKSpriteNode!
    
    var wheelState: spinnerState = .waiting
    var value = [[String]]()
    var images = [SKSpriteNode]()
    var tickSound: SKAction!
    var errorSound: SKAction!
    var wonSound: SKAction!
    var wooshSound: SKAction!
    var startPos: CGFloat = 0
    
//    var wheelHub: PushButton!
    var dialogTitleLabel: SKLabelNode = SKLabelNode()
    var labelColor: SKColor = SKColor()
    var labelDarkColor: SKColor = SKColor()
    
}
