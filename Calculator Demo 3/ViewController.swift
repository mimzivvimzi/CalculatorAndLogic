//
//  ViewController.swift
//  Calculator Demo 3
//
//  Created by Michelle Lau on 2019/11/23.
//  Copyright © 2019 Michelle Lau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    var currentNumber = 0
    var previousNumber = 0
    var isCalculating = false
    var mathOperation = 0
    var resultDisplayed = false

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func numberButtonsClicked(_ sender: UIButton) {
        currentNumber = sender.tag
        if isCalculating {
            resultLabel.text = String(currentNumber)
            isCalculating = false
        } else {
            if let currentlyInLabel = resultLabel.text {
                if currentlyInLabel == "0" {
                    resultLabel.text = String(currentNumber)
                } else {
                    let newNumber = currentlyInLabel + String(currentNumber)
                    resultLabel.text = newNumber
                    currentNumber = Int(newNumber)!
                }
            }
        }
    }
    
    @IBAction func operationButtonsClicked(_ sender: UIButton) {
        switch sender.tag {
        case 99:
            resultLabel.text = "0"
            isCalculating = false
            currentNumber = 0
            previousNumber = 0
            mathOperation = 0
        case 10:
            switch mathOperation {
            case 11:
                currentNumber = previousNumber + currentNumber
            case 12:
                currentNumber = previousNumber - currentNumber
            case 13:
                currentNumber = previousNumber * currentNumber
            case 14:
                currentNumber = previousNumber / currentNumber
            default:
                print("Something is wrong")
            }
            resultLabel.text = String(currentNumber)
            resultDisplayed = true
        default:
            mathOperation = sender.tag
            previousNumber = currentNumber
            isCalculating = true
        }
    }
    
}

