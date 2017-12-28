//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Andre D'Souza on 2017-05-20.
//  Copyright © 2017 Andre D'Souza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func guessButton(_ sender: Any) {
        print("Guess button pressed")
        
        let guess = String(arc4random_uniform(6))
        
        if (numField.text == guess) {
            answerLabel.text = "You're right!"
        } else {
            answerLabel.text = "Sorry your wrong. Correct answer is \(guess)"
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

