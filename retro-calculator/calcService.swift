//
//  calcService.swift
//  retro-calculator
//
//  Created by Yeswanth varma Kanumuri on 3/18/16.
//  Copyright © 2016 devslopes. All rights reserved.
//

import Foundation
class calcService {

static let instance = calcService()
    
    enum Operation: String {
        case Divide = "/"
        case Multiply = "*"
        case Subtract = "-"
        case Add = "+"
        case Empty = "Empty"
    }

    
    func MultiplicationValue (numstrA:String , numstrB:String ) ->String? {
        if let numA = Double(numstrA) , let numB = Double(numstrB){
            return "\(numA * numB)"
        } else {
            return nil
        }
    }
    func AdditionValue (numstrA:String , numstrB:String ) ->String? {
        if let numA = Double(numstrA) , let numB = Double(numstrB){
            return "\(numA + numB)"
        } else {
            return nil
        }
    }
    func SubtractionValue (numstrA:String , numstrB:String ) ->String? {
        if let numA = Double(numstrA) , let numB = Double(numstrB){
            return "\(numA - numB)"
        } else {
            return nil
        }
    }
    func DivisionValue (numstrA:String , numstrB:String ) ->String? {
        if let numA = Double(numstrA) , let numB = Double(numstrB){
            return "\(numA / numB)"
        } else {
            return nil
        }
    }

}


//if currentOperation == calcService.Operation.Multiply {
//    result = "\(Double(leftValStr)! * Double(rightValStr)!)"
//} else if currentOperation == calcService.Operation.Divide {
//    result = "\(Double(leftValStr)! / Double(rightValStr)!)"
//} else if currentOperation == calcService.Operation.Subtract {
//    result = "\(Double(leftValStr)! - Double(rightValStr)!)"
//} else if currentOperation == calcService.Operation.Add {
//    result = "\(Double(leftValStr)! + Double(rightValStr)!)"
//}