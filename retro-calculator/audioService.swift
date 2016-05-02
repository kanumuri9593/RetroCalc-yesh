//
//  audioService.swift
//  retro-calculator
//
//  Created by Yeswanth varma Kanumuri on 3/18/16.
//  Copyright © 2016 devslopes. All rights reserved.
//

import UIKit
import AVFoundation


class audioService {

static let instance = audioService()
    
  private  var _SoundFXPlayer:AVAudioPlayer?
    
    var SoundFXPlayer: AVAudioPlayer? {
        get {
        
        
            return _SoundFXPlayer
        }
        set {
        
        _SoundFXPlayer = newValue
        
        }
    
    
    }
    
    
    var butnUrl: NSURL? {
    
        if let urlStr = pathForResorce("btn", fileType: "wav"){
        
        return NSURL(string: urlStr)
        
        }
    
        return nil
    
    }
    
  //  let BTN_PATH = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
    
    
    func pathForResorce (filename:String , fileType:String) -> String? {
    
     
    return NSBundle.mainBundle().pathForResource(filename, ofType: fileType)
    
    }
    
    func createPlayerwithUrl (audioPath : NSURL) -> AVAudioPlayer? {
    
        do {
                 return try AVAudioPlayer(contentsOfURL:audioPath)
               // btnSound.prepareToPlay()
            
                } catch let err as NSError {
                    
                print(err.debugDescription)
                    
                    return nil
                }

    
    
    
    }
    
    
    func playSoundFX() -> Bool{
        if let player = SoundFXPlayer {
            
            if player.playing {
            
            
            SoundFXPlayer?.stop()
            
            }
            
            SoundFXPlayer?.play()
            return player.playing
        }
        
       return false
    }

}
