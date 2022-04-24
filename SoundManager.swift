//
//  SoundManager.swift
//  DietLife
//
//  Created by Matthew Christopher Albert on 25/04/22.
//

import AVKit

class SoundManager {
    
    static let shared = SoundManager()
    
    var player: AVAudioPlayer?
    
    enum SoundName: String {
        case crunch
        case knock
        case flip
        case shoot
        case tada
    }
    
    func playSound(_ filename: SoundName) {
        guard let url = Bundle.main.url(forResource: filename.rawValue, withExtension: "mp3") else { return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.volume = 0.3
            player?.prepareToPlay()
            player?.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
    
}
