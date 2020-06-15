//
//  BackgroundMusic.swift
//  gameOfLife2d
//
//  Created by Rais Mohamad Najib on 15/06/20.
//  Copyright © 2020 danny santoso. All rights reserved.
//

import Foundation
import AVFoundation

class MusicHelper {
static let sharedHelper = MusicHelper()
var audioPlayer: AVAudioPlayer?

func playBackgroundMusic() {
    let aSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "bensound-ukulele", ofType: "mp3")!)
    do {
        audioPlayer = try AVAudioPlayer(contentsOf:aSound as URL)
        audioPlayer!.numberOfLoops = -1
        audioPlayer!.prepareToPlay()
        audioPlayer!.play()
        audioPlayer!.volume = 0.1
    }
    catch {
        print("Cannot play the file")
    }
}
}
