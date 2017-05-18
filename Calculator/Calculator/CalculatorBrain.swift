//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by cci-loaner on 5/16/17.
//  Copyright © 2017 Kune Studios. All rights reserved.
//

import Foundation

class CalculatorBrain{
    
    //The brain, does the calculations
    //Recieves
    init(){
        
    }
    
    var operand: Double =  0.0
    var operation = 0.0
    
    func setOperand(someValue :Double){
        operand = someValue
    }
    
    
    func performOperation(someOperation :String) -> Double {
        switch someOperation {
        case "PI":
            return Double.pi
            case "SQRT":
            return sqrt(operand)
        default:
            return 0.0
        }
    }
}
