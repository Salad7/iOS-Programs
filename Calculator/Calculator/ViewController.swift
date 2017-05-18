//
//  ViewController.swift
//  Calculator
//
//  Created by cci-loaner on 5/15/17.
//  Copyright © 2017 Kune Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var userIsInMiddleOfTyping = false
   private var cBrain = CalculatorBrain()
    @IBOutlet private weak var display: UILabel?
    
    
    @IBAction private func touchDigit(_ sender: UIButton) {
     //Current digit
     let digit = sender.currentTitle!
        if(userIsInMiddleOfTyping){
    let textCurrentlyInDisplay = display!.text!
    display!.text = textCurrentlyInDisplay + digit
        }
        else{
            display!.text = digit
        }
        userIsInMiddleOfTyping = true
    }

    @IBAction private func PI(_ sender: UIButton) {
        cBrain.setOperand(someValue: displayValue)
        displayValue = cBrain.performOperation(someOperation: sender.currentTitle!)
        userIsInMiddleOfTyping = true;
    }
    private var displayValue: Double {
        get{
            return Double(display!.text!)!
        }
        set {
            display!.text = String(newValue)
        }
    }
    
    

}

