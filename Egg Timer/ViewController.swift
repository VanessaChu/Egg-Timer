//
//  ViewController.swift
//  Egg Timer
//
//  Created by Vanessa Chu on 2017-06-23.
//  Copyright © 2017 Vanessa Chu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var value = 210
    
    @IBOutlet var timerValue: UILabel!
    @IBAction func resetButton(_ sender: Any) {
        value = 210
        timerValue.text = String(value)
    }
    
    @IBAction func minusTen(_ sender: Any) {
        if value - 10 >= 0{
            value -= 10
            timerValue.text = String(value)
        }
    }
    
    @IBAction func plusTen(_ sender: Any) {
        value += 10
        timerValue.text = String(value)
    }
    
    @IBAction func timerPause(_ sender: Any) {
        if timer.isValid == true{
            timer.invalidate()
        }
    }

    @IBAction func timerPlay(_ sender: Any) {

        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }
    
    
    func processTimer(){
        value = Int(timerValue.text!)!
        if value != 0{
            value -= 1
            timerValue.text = String(value)
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

