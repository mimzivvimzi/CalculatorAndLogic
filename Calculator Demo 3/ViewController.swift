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
    
    
    var numberOnScreen : Double = 0 // Current number displayed on the label
    var previousNumber : Double = 0 // Stores the previous number
    var performingMath = false // Bool will be used to perform the math operations
    var operation = 0 // Math operation which is needed to perform on the numbers. The + sign has tag 15.  The = sign has tag 16.

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func numberButtonsClicked(_ sender: Any) {
    }
    
    @IBAction func operationButtonsClicked(_ sender: Any) {
    }
    
}

