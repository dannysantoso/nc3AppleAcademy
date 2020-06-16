//
//  StructCard.swift
//  gameOfLife2d
//
//  Created by Rais Mohamad Najib on 15/06/20.
//  Copyright © 2020 danny santoso. All rights reserved.
//

import Foundation
import SpriteKit


// masukin kesini kali ya
//var realJob: String = "Job awalnya dia "
    
    struct SupriseTiles {
        var name: String
        var job: String
        var image: String
        var isSkipped: Bool
        var isIncrease: Bool
        var value: Int
        var floor: Int
        var isCollege: Bool
    }
    

//bikin hardcode smua aja kali ya


//let surprise = [
//    //hardcode dulu bro
//    //college student
//    SupriseTiles(name: "failed test", job: "College Student", image: "College Student(2)", isSkipped: true, isIncrease: false, isDecrease: false, value: 0, floor: 5, isCollege: true),
//    SupriseTiles(name: "failed test", job: "College Student", image: "College Student(2)", isSkipped: true, isIncrease: false, isDecrease: false, value: 0, floor: 8, isCollege: true),
//    SupriseTiles(name: "failed test", job: "College Student", image: "\(realJob)(13)", isSkipped: true, isIncrease: false, isDecrease: false, value: 0, floor: 5, isCollege: true),
//    SupriseTiles(name: "Graduation", job: "College Student", image: "\(realJob)(3)", isSkipped: true, isIncrease: false, isDecrease: false, value: 0, floor: 5, isCollege: true),
//]

let surprise = [
    //hardcode dulu bro
    //college student
    
    
    //Mystery 0 debt
    SupriseTiles(name: "Debt", job: "", image: "Mystery(0)", isSkipped: false, isIncrease: false, value: 5000, floor: 5, isCollege: false),
    SupriseTiles(name: "Debt", job: "", image: "Mystery(0)", isSkipped: false, isIncrease: false, value: 5000, floor: 9, isCollege: false),
    SupriseTiles(name: "Debt", job: "", image: "Mystery(0)", isSkipped: false, isIncrease: false, value: 5000, floor: 17, isCollege: false),
    SupriseTiles(name: "Debt", job: "", image: "Mystery(0)", isSkipped: false, isIncrease: false, value: 5000, floor: 26, isCollege: false),
    SupriseTiles(name: "Debt", job: "", image: "Mystery(0)", isSkipped: false, isIncrease: false, value: 5000, floor: 34, isCollege: false),
    SupriseTiles(name: "Debt", job: "", image: "Mystery(0)", isSkipped: false, isIncrease: false, value: 5000, floor: 53, isCollege: false),
    SupriseTiles(name: "Debt", job: "", image: "Mystery(0)", isSkipped: false, isIncrease: false, value: 5000, floor: 54, isCollege: false),
    
    //Mystery 1 Car Accident
    SupriseTiles(name: "Car Accident", job: "", image: "Mystery(1)", isSkipped: false, isIncrease: false, value: 5000, floor: 6, isCollege: false),
    SupriseTiles(name: "Car Accident", job: "", image: "Mystery(1)", isSkipped: false, isIncrease: false, value: 5000, floor: 10, isCollege: false),
    SupriseTiles(name: "Car Accident", job: "", image: "Mystery(1)", isSkipped: false, isIncrease: false, value: 5000, floor: 13, isCollege: false),
    SupriseTiles(name: "Car Accident", job: "", image: "Mystery(1)", isSkipped: false, isIncrease: false, value: 5000, floor: 27, isCollege: false),
    SupriseTiles(name: "Car Accident", job: "", image: "Mystery(1)", isSkipped: false, isIncrease: false, value: 5000, floor: 30, isCollege: false),
    SupriseTiles(name: "Car Accident", job: "", image: "Mystery(1)", isSkipped: false, isIncrease: false, value: 5000, floor: 38, isCollege: false),
    SupriseTiles(name: "Car Accident", job: "", image: "Mystery(1)", isSkipped: false, isIncrease: false, value: 5000, floor: 49, isCollege: false),
    
    
    //Mystery 2 Pandemic
    
    SupriseTiles(name: "Pandemic", job: "", image: "Mystery(2)", isSkipped: false, isIncrease: false, value: 10000, floor: 18, isCollege: false),
    SupriseTiles(name: "Pandemic", job: "", image: "Mystery(2)", isSkipped: false, isIncrease: false, value: 10000, floor: 23, isCollege: false),
    
    
    //Mystery 3 Social BreakOut
    SupriseTiles(name: "Social BreakOut", job: "", image: "Mystery(3)", isSkipped: false, isIncrease: false, value: 10000, floor: 14, isCollege: false),
    SupriseTiles(name: "Social BreakOut", job: "", image: "Mystery(3)", isSkipped: false, isIncrease: false, value: 20000, floor: 33, isCollege: false),
    
    
    //Mystery 4 Social Natural Disaster
    SupriseTiles(name: "Natural Disaster", job: "", image: "Mystery(4)", isSkipped: true, isIncrease: true, value: 0, floor: 29, isCollege: false),
    SupriseTiles(name: "Natural Disaster", job: "", image: "Mystery(4)", isSkipped: true, isIncrease: true, value: 0, floor: 31, isCollege: false),
    
    //Mystery 5 Rumah Struct
    SupriseTiles(name: "House is split", job: "", image: "Mystery(5)", isSkipped: false, isIncrease: false, value: 50000, floor: 50, isCollege: false),
    SupriseTiles(name: "House is split", job: "", image: "Mystery(5)", isSkipped: false, isIncrease: false, value: 50000, floor: 51, isCollege: false),
    SupriseTiles(name: "House is split", job: "", image: "Mystery(5)", isSkipped: false, isIncrease: false, value: 50000, floor: 57, isCollege: false),
    
    //Mystery 6 Bayar Pendidikan
    SupriseTiles(name: "Children Education", job: "", image: "Mystery(6)", isSkipped: false, isIncrease: false, value: 15000, floor: 58, isCollege: false),
    
    //Mystery 7
    SupriseTiles(name: "Gift for Love One", job: "", image: "Mystery(7)", isSkipped: false, isIncrease: false, value: 15000, floor: 37, isCollege: false),
    
    //Baby
    SupriseTiles(name: "Baby", job: "", image: "Baby", isSkipped: false, isIncrease: false, value: 0, floor: 39, isCollege: false),
    SupriseTiles(name: "Baby", job: "", image: "Baby", isSkipped: false, isIncrease: false, value: 0, floor: 45, isCollege: false),
    SupriseTiles(name: "Baby", job: "", image: "Baby", isSkipped: false, isIncrease: false, value: 0, floor: 55, isCollege: false),
    
    
    // gajian 4, 8, 12, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52, 56, 60
    // mystery bebas 5, 10,
    
    
    SupriseTiles(name: "failed test", job: "Mahasiswa", image: "CollegeStudent(2)", isSkipped: true, isIncrease: false, value: 0, floor: 3, isCollege: true),
    SupriseTiles(name: "failed test", job: "Mahasiswa", image: "CollegeStudent(2)", isSkipped: true, isIncrease: false, value: 0, floor: 7, isCollege: true),
    SupriseTiles(name: "failed test", job: "Mahasiswa", image: "CollegeStudent(2)", isSkipped: true, isIncrease: false, value: 0, floor: 11, isCollege: true),
//    SupriseTiles(name: "Graduation", job: "Mahasiswa", image: "CollegeStudent(3)", isSkipped: false, isIncrease: false, value: 0, floor: 15, isCollege: true),
    
    //Youtuber
    //gajian
//    SupriseTiles(name: "Happy Payday", job: "Youtuber", image: "Youtuber(2)", isSkipped: false, isIncrease: true, value: 5000, floor: 4, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Youtuber", image: "Youtuber(2)", isSkipped: false, isIncrease: true, value: 5000, floor: 8, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Youtuber", image: "Youtuber(2)", isSkipped: false, isIncrease: true, value: 5000, floor: 12, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Youtuber", image: "Youtuber(2)", isSkipped: false, isIncrease: true, value: 5000, floor: 16, isCollege: false),
//    SupriseTiles(name: "Promotion", job: "Youtuber", image: "Youtuber(2)", isSkipped: false, isIncrease: true, value: 5000, floor: 20, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Youtuber", image: "Youtuber(2)", isSkipped: false, isIncrease: true, value: 5000, floor: 24, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Youtuber", image: "Youtuber(2)", isSkipped: false, isIncrease: true, value: 5000, floor: 28, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Youtuber", image: "Youtuber(2)", isSkipped: false, isIncrease: true, value: 5000, floor: 32, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Youtuber", image: "Youtuber(2)", isSkipped: false, isIncrease: true, value: 5000, floor: 36, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Youtuber", image: "Youtuber(2)", isSkipped: false, isIncrease: true, value: 5000, floor: 40, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Youtuber", image: "Youtuber(2)", isSkipped: false, isIncrease: true, value: 5000, floor: 44, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Youtuber", image: "Youtuber(2)", isSkipped: false, isIncrease: true, value: 5000, floor: 48, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Youtuber", image: "Youtuber(2)", isSkipped: false, isIncrease: true, value: 5000, floor: 52, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Youtuber", image: "Youtuber(2)", isSkipped: false, isIncrease: true, value: 5000, floor: 56, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Youtuber", image: "Youtuber(2)", isSkipped: false, isIncrease: true, value: 5000, floor: 60, isCollege: false),
    //mystery youtuber
    // 3 7 11 19 21 22 41 42 46 59
    SupriseTiles(name: "Amazing", job: "Youtuber", image: "Youtuber(3)", isSkipped: false, isIncrease: true, value: 50000, floor: 3, isCollege: false),
    SupriseTiles(name: "Good", job: "Youtuber", image: "Youtuber(4)", isSkipped: false, isIncrease: true, value: 10000, floor: 7, isCollege: false),
    SupriseTiles(name: "Bad One", job: "Youtuber", image: "Youtuber(5)", isSkipped: false, isIncrease: false, value: 2000, floor: 11, isCollege: false),
    SupriseTiles(name: "Amazing", job: "Youtuber", image: "Youtuber(4)", isSkipped: false, isIncrease: true, value: 10000, floor: 19, isCollege: false),
    SupriseTiles(name: "Amazing", job: "Youtuber", image: "Youtuber(6)", isSkipped: false, isIncrease: true, value: 20000, floor: 21, isCollege: false),
    SupriseTiles(name: "Bad One", job: "Youtuber", image: "Youtuber(5)", isSkipped: false, isIncrease: false, value: 2000, floor: 22, isCollege: false),
    SupriseTiles(name: "Amazing", job: "Youtuber", image: "Youtuber(4)", isSkipped: false, isIncrease: true, value: 10000, floor: 41, isCollege: false),
    SupriseTiles(name: "Bad One", job: "Youtuber", image: "Youtuber(5)", isSkipped: false, isIncrease: true, value: 2000, floor: 42, isCollege: false),
    SupriseTiles(name: "Worst", job: "Youtuber", image: "Youtuber(6)", isSkipped: false, isIncrease: false, value: 20000, floor: 46, isCollege: false),
    SupriseTiles(name: "Amazing", job: "Youtuber", image: "Youtuber(3)", isSkipped: false, isIncrease: true, value: 50000, floor: 59, isCollege: false),
    
    //Police
    //gajian
//    SupriseTiles(name: "Happy Payday", job: "Police", image: "Police(2)", isSkipped: false, isIncrease: true, value: 10000, floor: 4, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Police", image: "Police(2)", isSkipped: false, isIncrease: true, value: 10000, floor: 8, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Police", image: "Police(2)", isSkipped: false, isIncrease: true, value: 10000, floor: 12, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Police", image: "Police(2)", isSkipped: false, isIncrease: true, value: 10000, floor: 16, isCollege: false),
//    SupriseTiles(name: "Promotion", job: "Police", image: "Promotion", isSkipped: false, isIncrease: true, value: 12000, floor: 20, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Police", image: "Police(2)", isSkipped: false, isIncrease: true, value: 12000, floor: 24, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Police", image: "Depromotion", isSkipped: false, isIncrease: true, value: 10000, floor: 28, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Police", image: "Police(2)", isSkipped: false, isIncrease: true, value: 10000, floor: 32, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Police", image: "Police(2)", isSkipped: false, isIncrease: true, value: 10000, floor: 36, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Police", image: "Police(2)", isSkipped: false, isIncrease: true, value: 10000, floor: 40, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Police", image: "Police(2)", isSkipped: false, isIncrease: true, value: 10000, floor: 44, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Police", image: "Police(2)", isSkipped: false, isIncrease: true, value: 10000, floor: 48, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Police", image: "Promotion", isSkipped: false, isIncrease: true, value: 12000, floor: 52, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Police", image: "Police(2)", isSkipped: false, isIncrease: true, value: 12000, floor: 56, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Police", image: "Police(2)", isSkipped: false, isIncrease: true, value: 12000, floor: 60, isCollege: false),
    //mystery
    // 3 7 11 19 21 22 41 42 46 59
    SupriseTiles(name: "Good", job: "Police", image: "Police(3)", isSkipped: false, isIncrease: true, value: 15000, floor: 3, isCollege: false),
    SupriseTiles(name: "Good", job: "Police", image: "Police(3)", isSkipped: false, isIncrease: true, value: 15000, floor: 7, isCollege: false),
    SupriseTiles(name: "Bad One", job: "Police", image: "Police(4)", isSkipped: false, isIncrease: false, value: 10000, floor: 11, isCollege: false),
    SupriseTiles(name: "Bad One", job: "Police", image: "Police(4)", isSkipped: false, isIncrease: false, value: 10000, floor: 19, isCollege: false),
    SupriseTiles(name: "Good", job: "Police", image: "Police(3)", isSkipped: false, isIncrease: true, value: 15000, floor: 21, isCollege: false),
    SupriseTiles(name: "Bad One", job: "Police", image: "Police(4)", isSkipped: false, isIncrease: false, value: 10000, floor: 22, isCollege: false),
    SupriseTiles(name: "Bad One", job: "Police", image: "Police(4)", isSkipped: false, isIncrease: false, value: 10000, floor: 41, isCollege: false),
    SupriseTiles(name: "Good", job: "Police", image: "Police(3)", isSkipped: false, isIncrease: true, value: 15000, floor: 42, isCollege: false),
    SupriseTiles(name: "Bad One", job: "Police", image: "Police(4)", isSkipped: false, isIncrease: false, value: 10000, floor: 46, isCollege: false),
    SupriseTiles(name: "Good", job: "Police", image: "Police(3)", isSkipped: false, isIncrease: true, value: 15000, floor: 59, isCollege: false),
    
    
    //Mechanic
    //gajian
//    SupriseTiles(name: "Happy Payday", job: "Mekanik", image: "Mechanic(2)", isSkipped: false, isIncrease: true, value: 8000, floor: 4, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Mekanik", image: "Mechanic(2)", isSkipped: false, isIncrease: true, value: 8000, floor: 8, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Mekanik", image: "Mechanic(2)", isSkipped: false, isIncrease: true, value: 8000, floor: 12, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Mekanik", image: "Mechanic(2)", isSkipped: false, isIncrease: true, value: 8000, floor: 16, isCollege: false),
//    SupriseTiles(name: "Promotion", job: "Mekanik", image: "Promotion", isSkipped: false, isIncrease: true, value: 10000, floor: 20, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Mekanik", image: "Mechanic(2)", isSkipped: false, isIncrease: true, value: 10000, floor: 24, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Mekanik", image: "Depromotion", isSkipped: false, isIncrease: true, value: 8000, floor: 28, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Mekanik", image: "Mechanic(2)", isSkipped: false, isIncrease: true, value: 8000, floor: 32, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Mekanik", image: "Mechanic(2)", isSkipped: false, isIncrease: true, value: 8000, floor: 36, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Mekanik", image: "Mechanic(2)", isSkipped: false, isIncrease: true, value: 8000, floor: 40, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Mekanik", image: "Mechanic(2)", isSkipped: false, isIncrease: true, value: 8000, floor: 44, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Mekanik", image: "Mechanic(2)", isSkipped: false, isIncrease: true, value: 8000, floor: 48, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Mekanik", image: "Promotion", isSkipped: false, isIncrease: true, value: 10000, floor: 52, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Mekanik", image: "Mechanic(2)", isSkipped: false, isIncrease: true, value: 10000, floor: 56, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Mekanik", image: "Mechanic(2)", isSkipped: false, isIncrease: true, value: 10000, floor: 60, isCollege: false),
    //mystery mechanice
    // 3 7 11 19 21 22 41 42 46 59
    SupriseTiles(name: "Good", job: "Mekanik", image: "Mechanic(3)", isSkipped: false, isIncrease: true, value: 10000, floor: 3, isCollege: false),
    SupriseTiles(name: "Good", job: "Mekanik", image: "Mechanic(3)", isSkipped: false, isIncrease: true, value: 10000, floor: 7, isCollege: false),
    SupriseTiles(name: "Good", job: "Mekanik", image: "Mechanic(3)", isSkipped: false, isIncrease: true, value: 10000, floor: 11, isCollege: false),
    SupriseTiles(name: "Good", job: "Mekanik", image: "Mechanic(3)", isSkipped: false, isIncrease: true, value: 10000, floor: 19, isCollege: false),
    SupriseTiles(name: "Good", job: "Mekanik", image: "Mechanic(3)", isSkipped: false, isIncrease: true, value: 10000, floor: 21, isCollege: false),
    SupriseTiles(name: "Good", job: "Mekanik", image: "Mechanic(4)", isSkipped: false, isIncrease: true, value: 10000, floor: 22, isCollege: false),
    SupriseTiles(name: "Good", job: "Mekanik", image: "Mechanic(3)", isSkipped: false, isIncrease: true, value: 10000, floor: 41, isCollege: false),
    SupriseTiles(name: "Good", job: "Mekanik", image: "Mechanic(3)", isSkipped: false, isIncrease: true, value: 10000, floor: 42, isCollege: false),
    SupriseTiles(name: "Good", job: "Mekanik", image: "Mechanic(3)", isSkipped: false, isIncrease: true, value: 10000, floor: 46, isCollege: false),
    SupriseTiles(name: "Good", job: "Mekanik", image: "Mechanic(3)", isSkipped: false, isIncrease: true, value: 10000, floor: 59, isCollege: false),

    //MSoftware Engineer
    //gajian
//    SupriseTiles(name: "Happy Payday", job: "SE", image: "SoftwareEngineer(2)", isSkipped: false, isIncrease: true, value: 13000, floor: 4, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "SE", image: "SoftwareEngineer(2)", isSkipped: false, isIncrease: true, value: 13000, floor: 8, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "SE", image: "SoftwareEngineer(2)", isSkipped: false, isIncrease: true, value: 13000, floor: 12, isCollege: false),
    
//    SupriseTiles(name: "Happy Payday", job: "Software Engineer", image: "SoftwareEngineer(2)", isSkipped: false, isIncrease: true, value: 13000, floor: 16, isCollege: false),
//    SupriseTiles(name: "Promotion", job: "Software Engineer", image: "Promotion", isSkipped: false, isIncrease: true, value: 15000, floor: 20, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Software Engineer", image: "SoftwareEngineer(2)", isSkipped: false, isIncrease: true, value: 15000, floor: 24, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Software Engineer", image: "Depromotion", isSkipped: false, isIncrease: true, value: 13000, floor: 28, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Software Engineer", image: "SoftwareEngineer(2)", isSkipped: false, isIncrease: true, value: 13000, floor: 32, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Software Engineer", image: "SoftwareEngineer(2)", isSkipped: false, isIncrease: true, value: 13000, floor: 36, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Software Engineer", image: "SoftwareEngineer(2)", isSkipped: false, isIncrease: true, value: 13000, floor: 40, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Software Engineer", image: "SoftwareEngineer(2)", isSkipped: false, isIncrease: true, value: 13000, floor: 44, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Software Engineer", image: "SoftwareEngineer(2)", isSkipped: false, isIncrease: true, value: 13000, floor: 48, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Software Engineer", image: "Promotion", isSkipped: false, isIncrease: true, value: 15000, floor: 52, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Software Engineer", image: "SoftwareEngineer(2)", isSkipped: false, isIncrease: true, value: 15000, floor: 56, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "SE", image: "SoftwareEngineer(2)", isSkipped: false, isIncrease: true, value: 15000, floor: 60, isCollege: false),
    //mystery SE
    // 3 7 11 19 21 22 41 42 46 59
//    SupriseTiles(name: "Good", job: "SE", image: "SoftwareEngineer(3)", isSkipped: false, isIncrease: true, value: 10000, floor: 3, isCollege: false),
//    SupriseTiles(name: "Good", job: "SE", image: "SoftwareEngineer(3)", isSkipped: false, isIncrease: true, value: 10000, floor: 7, isCollege: false),
//    SupriseTiles(name: "Good", job: "SE", image: "SoftwareEngineer(3)", isSkipped: false, isIncrease: true, value: 10000, floor: 11, isCollege: false),
    SupriseTiles(name: "Bad", job: "Software Engineer", image: "SoftwareEngineer(4)", isSkipped: false, isIncrease: true, value: 10000, floor: 19, isCollege: false),
    SupriseTiles(name: "Good", job: "Software Engineer", image: "SoftwareEngineer(3)", isSkipped: true, isIncrease: true, value: 20000, floor: 21, isCollege: false),
    SupriseTiles(name: "Bad", job: "Software Engineer", image: "SoftwareEngineer(4)", isSkipped: false, isIncrease: false, value: 10000, floor: 22, isCollege: false),
    SupriseTiles(name: "Good", job: "Software Engineer", image: "SoftwareEngineer(3)", isSkipped: true, isIncrease: true, value: 20000, floor: 41, isCollege: false),
    SupriseTiles(name: "Good", job: "Software Engineer", image: "SoftwareEngineer(3)", isSkipped: true, isIncrease: true, value: 20000, floor: 42, isCollege: false),
    SupriseTiles(name: "Bad", job: "Software Engineer", image: "SoftwareEngineer(4)", isSkipped: false, isIncrease: false, value: 10000, floor: 46, isCollege: false),
    SupriseTiles(name: "Good", job: "Software Engineer", image: "SoftwareEngineer(3)", isSkipped: true, isIncrease: true, value: 20000, floor: 59, isCollege: false),
    
    
    //MSoftware Doctor
    //gajian
//    SupriseTiles(name: "Happy Payday", job: "Doctor", image: "Doctor(2)", isSkipped: false, isIncrease: true, value: 15000, floor: 4, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Doctor", image: "Doctor(2)", isSkipped: false, isIncrease: true, value: 15000, floor: 8, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Doctor", image: "Doctor(2)", isSkipped: false, isIncrease: true, value: 15000, floor: 12, isCollege: false),
    
//    SupriseTiles(name: "Happy Payday", job: "Doctor", image: "Doctor(2)", isSkipped: false, isIncrease: true, value: 15000, floor: 16, isCollege: false),
//    SupriseTiles(name: "Promotion", job: "Doctor", image: "Promotion", isSkipped: false, isIncrease: true, value: 18000, floor: 20, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Doctor", image: "Doctor(2)", isSkipped: false, isIncrease: true, value: 18000, floor: 24, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Doctor", image: "Depromotion", isSkipped: false, isIncrease: true, value: 15000, floor: 28, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Doctor", image: "Doctor(2)", isSkipped: false, isIncrease: true, value: 15000, floor: 32, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Doctor", image: "Doctor(2)", isSkipped: false, isIncrease: true, value: 15000, floor: 36, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Doctor", image: "Doctor(2)", isSkipped: false, isIncrease: true, value: 15000, floor: 40, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Doctor", image: "Doctor(2)", isSkipped: false, isIncrease: true, value: 15000, floor: 44, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Doctor", image: "Doctor(2)", isSkipped: false, isIncrease: true, value: 15000, floor: 48, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Doctor", image: "Promotion", isSkipped: false, isIncrease: true, value: 18000, floor: 52, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Doctor", image: "Doctor(2)", isSkipped: false, isIncrease: true, value: 18000, floor: 56, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Doctor", image: "Doctor(2)", isSkipped: false, isIncrease: true, value: 18000, floor: 60, isCollege: false),
    //mystery Doctor
    // 3 7 11 19 21 22 41 42 46 59
//    SupriseTiles(name: "Good", job: "Doctor", image: "Doctor(3)", isSkipped: false, isIncrease: true, value: 15000, floor: 3, isCollege: false),
//    SupriseTiles(name: "Good", job: "Doctor", image: "Doctor(3)", isSkipped: false, isIncrease: true, value: 15000, floor: 7, isCollege: false),
//    SupriseTiles(name: "Good", job: "Doctor", image: "Doctor(3)", isSkipped: false, isIncrease: true, value: 15000, floor: 11, isCollege: false),
    SupriseTiles(name: "Bad", job: "Doctor", image: "Doctor(4)", isSkipped: false, isIncrease: true, value: 15000, floor: 19, isCollege: false),
    SupriseTiles(name: "Good", job: "Doctor", image: "Doctor(3)", isSkipped: false, isIncrease: true, value: 15000, floor: 21, isCollege: false),
    SupriseTiles(name: "Bad", job: "Doctor", image: "Doctor(4)", isSkipped: false, isIncrease: false, value: 15000, floor: 22, isCollege: false),
    SupriseTiles(name: "Good", job: "Doctor", image: "Doctor(3)", isSkipped: false, isIncrease: true, value: 15000, floor: 41, isCollege: false),
    SupriseTiles(name: "Good", job: "Doctor", image: "Doctor(3)", isSkipped: false, isIncrease: true, value: 15000, floor: 42, isCollege: false),
    SupriseTiles(name: "Bad", job: "Doctor", image: "Doctor(4)", isSkipped: false, isIncrease: false, value: 15000, floor: 46, isCollege: false),
    SupriseTiles(name: "Good", job: "Doctor", image: "Doctor(3)", isSkipped: false, isIncrease: true, value: 15000, floor: 59, isCollege: false),
    
    
    //MSoftware Lawyer
    //gajian
//    SupriseTiles(name: "Happy Payday", job: "Lawyer", image: "Lawyer(2)", isSkipped: false, isIncrease: true, value: 10000, floor: 4, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Lawyer", image: "Lawyer(2)", isSkipped: false, isIncrease: true, value: 10000, floor: 8, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Lawyer", image: "Lawyer(2)", isSkipped: false, isIncrease: true, value: 10000, floor: 12, isCollege: false),
    
//    SupriseTiles(name: "Happy Payday", job: "Lawyer", image: "Lawyer(2)", isSkipped: false, isIncrease: true, value: 10000, floor: 16, isCollege: false),
//    SupriseTiles(name: "Promotion", job: "Lawyer", image: "Promotion", isSkipped: false, isIncrease: true, value: 15000, floor: 20, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Lawyer", image: "Lawyer(2)", isSkipped: false, isIncrease: true, value: 15000, floor: 24, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Lawyer", image: "Depromotion", isSkipped: false, isIncrease: true, value: 10000, floor: 28, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Lawyer", image: "Lawyer(2)", isSkipped: false, isIncrease: true, value: 10000, floor: 32, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Lawyer", image: "Lawyer(2)", isSkipped: false, isIncrease: true, value: 10000, floor: 36, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Lawyer", image: "Lawyer(2)", isSkipped: false, isIncrease: true, value: 10000, floor: 40, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Lawyer", image: "Lawyer(2)", isSkipped: false, isIncrease: true, value: 10000, floor: 44, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Lawyer", image: "Lawyer(2)", isSkipped: false, isIncrease: true, value: 10000, floor: 48, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Lawyer", image: "Promotion", isSkipped: false, isIncrease: true, value: 15000, floor: 52, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Lawyer", image: "Lawyer(2)", isSkipped: false, isIncrease: true, value: 15000, floor: 56, isCollege: false),
//    SupriseTiles(name: "Happy Payday", job: "Lawyer", image: "Lawyer(2)", isSkipped: false, isIncrease: true, value: 15000, floor: 60, isCollege: false),
    //mystery Lawyer
    // 3 7 11 19 21 22 41 42 46 59
//    SupriseTiles(name: "Good", job: "Doctor", image: "Lawyer(3)", isSkipped: false, isIncrease: true, value: 15000, floor: 3, isCollege: false),
//    SupriseTiles(name: "Good", job: "Doctor", image: "Lawyer(3)", isSkipped: false, isIncrease: true, value: 15000, floor: 7, isCollege: false),
//    SupriseTiles(name: "Good", job: "Doctor", image: "Lawyer(3)", isSkipped: false, isIncrease: true, value: 15000, floor: 11, isCollege: false),
    SupriseTiles(name: "Bad", job: "Lawyer", image: "Lawyer(4)", isSkipped: false, isIncrease: true, value: 15000, floor: 19, isCollege: false),
    SupriseTiles(name: "Good", job: "Lawyer", image: "Lawyer(3)", isSkipped: false, isIncrease: true, value: 15000, floor: 21, isCollege: false),
    SupriseTiles(name: "Bad", job: "Lawyer", image: "Lawyer(4)", isSkipped: false, isIncrease: false, value: 10000, floor: 22, isCollege: false),
    SupriseTiles(name: "Good", job: "Lawyer", image: "Lawyer(3)", isSkipped: false, isIncrease: true, value: 15000, floor: 41, isCollege: false),
    SupriseTiles(name: "Good", job: "Lawyer", image: "Lawyer(3)", isSkipped: false, isIncrease: true, value: 15000, floor: 42, isCollege: false),
    SupriseTiles(name: "Bad", job: "Lawyer", image: "Lawyer(4)", isSkipped: false, isIncrease: false, value: 10000, floor: 46, isCollege: false),
    SupriseTiles(name: "Good", job: "Lawyer", image: "Lawyer(3)", isSkipped: false, isIncrease: true, value: 15000, floor: 59, isCollege: false),
    
    

]
    


 
