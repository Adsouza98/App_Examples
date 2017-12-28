//
//  ViewController.swift
//  Menu Bars
//
//  Created by Andre D'Souza on 2017-05-20.
//  Copyright © 2017 Andre D'Souza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    
    var time = 210
    
    @IBOutlet weak var timerProgress: UILabel!
    
    func decreaseTimer() {
        if time > 0 {
            time -= 1
            timerProgress.text = String(time)
        } else {
            timer.invalidate()
        }
    }
    
    @IBAction func playButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func backButton(_ sender: Any) {
        if time > 10 {
            time -= 10
            timerProgress.text = String(time)
        }
    }
    
    @IBAction func forwardButton(_ sender: Any) {
        time += 10
        timerProgress.text = String(time)
    }
    
    @IBAction func resetButton(_ sender: Any) {
        time = 210
        timerProgress.text = String(time)
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

