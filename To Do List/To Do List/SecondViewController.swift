//
//  SecondViewController.swift
//  To Do List
//
//  Created by Andre D'Souza on 2017-05-21.
//  Copyright © 2017 Andre D'Souza. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var itemField: UITextField!
    
    @IBAction func addButton(_ sender: Any) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        var items:[String]
        
        if let tempitems = itemsObject as? [String] {
            
            items = tempitems
            
            items.append(itemField.text!)
            
        } else {
            items = [itemField.text!]
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        itemField.text = ""
        
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

