//
//  File.swift
//  gameOfLife2d
//
//  Created by danny santoso on 13/06/20.
//  Copyright © 2020 danny santoso. All rights reserved.
//

import Foundation

struct insurancePlayer{
    var name: String
}

struct Players{
    var name: String
    var job: Job = Job.init()
    var money: Int
    var House: String
    var isMarried: Bool
    var child: Int
    var color: String
    var insurance: [insurancePlayer]
    var isFinish: Bool
    var isCollege: Bool
    var floor: Int
    var isFirstTurn: Bool
}


//init(name: String, job: String, money: Int, House: String, isMarried: Bool, child: Int, color: String, insurance: [insurancePlayer], isFinish: Bool, isCollege: Bool, floor: Int) {
//    self.name = name
//    self.job = job
//    self.money = money
//    self.House = House
//    self.isMarried = isMarried
//    self.child = child
//    self.color = color
//    self.insurance = insurance
//    self.isFinish = isFinish
//    self.isCollege = isCollege
//    self.floor = floor
//}
