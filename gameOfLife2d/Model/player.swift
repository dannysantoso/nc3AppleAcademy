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
    var job: String
    var money: Int
    var House: String
    var isMarried: Bool
    var child: Int
    var color: String
    var insurance: [insurancePlayer]
    var isFinish: Bool
    var isCollege: Bool
    var floor: Int
}
