//
//  ViewController.swift
//  Is It Prime
//
//  Created by Andre D'Souza on 2017-05-20.
//  Copyright © 2017 Andre D'Souza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numField: UITextField!
    @IBOutlet weak var answerLable: UILabel!
    
    @IBAction func checkButton(_ sender: Any) {
        
        if let userInputStr = numField.text {
            
            let userInputInt = Int(userInputStr)
            
            if let number = userInputInt {
            
                var isPrime = true
            
                if (number == 1) {
                    isPrime = false
                }
            
                var count = 2
            
                while count < number {
                
                    if (number % count == 0) {
                        isPrime = false
                    }
                
                    count += 1
                }
                if isPrime {
                    answerLable.text = "\(number) is Prime"
                } else {
                    answerLable.text = "\(number) is not Prime"
                }
            } else {
                answerLable.text = "Number Invalid. Please enter a Positive Whole Number"
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

