//
//  Job.swift
//  gameOfLife2d
//
//  Created by Alvian Gozali on 15/06/20.
//  Copyright © 2020 danny santoso. All rights reserved.
//

import Foundation

class Job {
    var name: String
    var salary: Int
    
    init() {
        self.name = "No Job"
        self.salary = 0
    }
}

class Police: Job{
    override init() {
        super.init()
        self.name = "Police"
        self.salary = 10000
    }
}

class Mahasiswa: Job{
    override init() {
        super.init()
        self.name = "Mahasiswa"
        self.salary = 0
    }
}

class Youtuber: Job{
    override init() {
        super.init()
        self.name = "Youtuber"
        self.salary = 5000
    }
}

class Mekanik: Job{
    override init() {
        super.init()
        self.name = "Mekanik"
        self.salary = 8000
    }
}

class SoftwareEngineer: Job{
    override init() {
        super.init()
        self.name = "Software Engineer"
        self.salary = 12000
    }
}

class Doctor: Job{
    override init() {
        super.init()
        self.name = "Doctor"
        self.salary = 15000
    }
}

class Lawyer: Job{
    override init() {
        super.init()
        self.name = "Lawyer"
        self.salary = 10000
    }
}
