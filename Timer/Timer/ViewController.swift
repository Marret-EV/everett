//
//  ViewController.swift
//  Timer
//
//  Created by Marret Everett on 9/24/19.
//  Copyright © 2019 stx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  //Global Variables here
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var lapLabel: UILabel!
    
    @IBOutlet weak var clearButton: UIButton!
    
    @IBOutlet weak var stopButton: UIButton!
   
    var counter = 0.0
    var timer = Timer()
    var isActive = false
        override func viewDidLoad() {
        super.viewDidLoad()
            
            stopButton.isEnabled = false
            timerLabel.text = String(format: "%.2f",counter)
            
        // Do any additional setup after loading the view.
    }

    @objc func updateLabel()
  {
    counter = counter + 0.01
timerLabel.text = String(format: "%.2f", counter)
    
    
    }
    
    @IBAction func startButtonPressed()
    {
        
        if isActive == true //if timer is active
        {
            return
        }
        //disable start button
        startButton.isEnabled = false
        stopButton.isEnabled = true
        //Start Timer
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(updateLabel), userInfo: nil, repeats: true)
        //Change active status
   
    }
    
    @IBAction func stopButtonPressed(){
    if isActive == true 
    {
        
            return //quit the function, we are stopped
        }
    startButton.isEnabled = true
    stopButton.isEnabled = false
    timer.invalidate() //kill timer
    isActive = false
    }
    
    @IBAction func resetButtonPressed() {
        if isActive == true
        {
            return
        }
        startButton.isEnabled = true
        stopButton.isEnabled = true
        counter = 0.0
        timerLabel.text = String(format: "%.2f", counter)
        
    }
   
    @IBAction func clearButtonPressed() {
    
        lapLabel.text = "0"
    }
    
    
    
    
    
    
    
    
    
    @IBAction func lapButtonPressed() {
        if isActive == true
        {
            return
            
        }
        lapLabel.text = lapLabel.text! + String(format:"%.2f", counter) + ","
  
    
    
    
    
       
    
    
    
    
        
     
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }

}

