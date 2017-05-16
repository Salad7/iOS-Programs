//
//  ViewController.swift
//  Calculator
//
//  Created by cci-loaner on 5/15/17.
//  Copyright © 2017 Kune Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet private weak var display: UILabel?
    private var userIsInMiddleOfTyping = false
    
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
    
        if(sender.currentTitle == "PI"){
        displayValue = Double.pi
        }
        else if (sender.currentTitle == "SQRT"){
            displayValue = sqrt(displayValue)
        }
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

