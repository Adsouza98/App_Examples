//
//  ViewController.swift
//  Hello World
//
//  Created by Andre D'Souza on 2017-05-20.
//  Copyright © 2017 Andre D'Souza. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var ageLabel: UILabel!
    
    //Need to fix if user does not enter a number
    @IBAction func submitDogAge(_ sender: Any) {
        
        let ageInDogYears = Int(ageField.text!)! * 7
        
        ageLabel.text = String(ageInDogYears)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

