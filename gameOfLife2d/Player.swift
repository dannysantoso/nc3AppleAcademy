//
//  Playewr.swift
//  gameOfLife2d
//
//  Created by Alvian Gozali on 12/06/20.
//  Copyright © 2020 danny santoso. All rights reserved.
//

import Foundation

class Player {
    var name: String
    var money: Int
    var lifeTile: Int
    var job: Job
    var color: String
    var tilePosition: Int
    
    init(name: String, color: String) {
        self.name = name
        self.money = 0
        self.lifeTile = 0
        self.job = Job.init()
        self.color = color
        self.tilePosition = 0
    }
}
