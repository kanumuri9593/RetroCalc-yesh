//
//  ViewController.swift
//  retro-calculator
//
//  Created by Mark Price on 8/1/15.
//  Copyright © 2015 devslopes. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

   
    @IBOutlet weak var outputLbl: UILabel!
    
  //  var player: AVAudioPlayer!
    
    var runningNumber = ""
    var leftValStr = ""
    var rightValStr = ""
    var currentOperation = calcService.Operation.Empty
    var result = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       audioService.instance.SoundFXPlayer = audioService.instance.createPlayerwithUrl(audioService.instance.butnUrl!)
        
        audioService.instance.SoundFXPlayer?.prepareToPlay()
        
//         player  = audioService.instance.createPlayerwithUrl(audioService.instance.butnUrl!) 
//        
//            player.prepareToPlay()
        
        
        
        
    }

    @IBAction func numberPressed(btn: UIButton!) {
        playSound()
        
        runningNumber += "\(btn.tag)"
        outputLbl.text = runningNumber
    }
    
    @IBAction func onDividePressed(sender: AnyObject) {
        processOperation(calcService.Operation.Divide)
    }
    
    @IBAction func onMultiplyPressed(sender: AnyObject) {
        processOperation(calcService.Operation.Multiply)
    }
    
    @IBAction func onSubtractPressed(sender: AnyObject) {
        processOperation(calcService.Operation.Subtract)
    }
    
    @IBAction func onAddPressed(sender: AnyObject) {
        processOperation(calcService.Operation.Add)
    }
    
    @IBAction func onEqualPressed(sender: AnyObject) {
        processOperation(currentOperation)
    }
    
    func processOperation(op: calcService.Operation) {
        playSound()
        
        if currentOperation != calcService.Operation.Empty {
            //Run some math
            
            //A user selected an operator, but then selected another operator without
            //first entering a number
            if runningNumber != "" {
                rightValStr = runningNumber
                runningNumber = ""
                
                if currentOperation == calcService.Operation.Multiply {
                    
                    result = calcService.instance.MultiplicationValue(leftValStr, numstrB: rightValStr)!
                    
                    
                } else if currentOperation == calcService.Operation.Divide {
                    
                    result = calcService.instance.DivisionValue(leftValStr, numstrB: rightValStr)!
                    
                } else if currentOperation == calcService.Operation.Subtract {
                    
                    result = calcService.instance.SubtractionValue(leftValStr, numstrB: rightValStr)!
                    
                } else if currentOperation == calcService.Operation.Add {
                    
                    result = calcService.instance.AdditionValue(leftValStr, numstrB: rightValStr)!
                }
                
                leftValStr = result
                outputLbl.text = result
            }
            
            
            currentOperation = op
            
        } else {
            //This is the first time an operator has been pressed
            leftValStr = runningNumber
            runningNumber = ""
            currentOperation = op
        }
    }
    
    func playSound() {
        audioService.instance.playSoundFX()
    }
}

