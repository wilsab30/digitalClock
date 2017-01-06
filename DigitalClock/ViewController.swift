//
//  ViewController.swift
//  DigitalClock
//
//  Created by Sabrina Wilbert on 1/2/17.
//  Copyright © 2017 Sabrina Wilbert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet var label: UILabel!
    
    var timer = Timer()
    
    @IBOutlet var settingView: UIView!
    
    
    @IBOutlet var textColorseg: UISegmentedControl!
    
    
    @IBOutlet var backgroundColorSeg: UISegmentedControl!
    
    @IBOutlet var settingsButton: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.updateTimer), userInfo: nil, repeats: true)
        
        settingView.isHidden = true
        settingsButton.alpha = 0.25
        label.alpha = 0
        settingView.layer.cornerRadius = 20
        settingsButton.layer.cornerRadius = 15
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func updateTimer() {
        
        let timeFormatter = DateFormatter()
        
        timeFormatter.timeStyle = .short
        
        label.text = timeFormatter.string(from: Date())
        
        label.alpha = 1.0
    
    }
    
    
    @IBAction func settings(_ sender: Any) {
        
        
        if settingView.isHidden == true {
            
            settingView.isHidden = false
            settingsButton.setTitle("Hide Settings", for: [])
            settingsButton.alpha = 1.0
        
        } else {
            settingView.isHidden = true
            settingsButton.setTitle("Show Settings", for: [])
            settingsButton.alpha = 0.25
        
        }
    }
    
    
    @IBAction func textColor(_ sender: Any) {
        
        
        if (textColorseg.selectedSegmentIndex == 0) {
            
            label.textColor = UIColor.white
        
        }
        
        if (textColorseg.selectedSegmentIndex == 1) {
            
            label.textColor = UIColor.black
            
        }
        
        if (textColorseg.selectedSegmentIndex == 2) {
            
            label.textColor = UIColor.red
            
        }
        
        if (textColorseg.selectedSegmentIndex == 3) {
            
            label.textColor = UIColor.green
            
        }

    }
    
    
    
    @IBAction func backgroundColor(_ sender: Any) {
        
        if (backgroundColorSeg.selectedSegmentIndex == 0) {
        
                label.backgroundColor = UIColor.black
            
        }
        
        if (backgroundColorSeg.selectedSegmentIndex == 1) {
            
            label.backgroundColor = UIColor.white
        }
        
        if (backgroundColorSeg.selectedSegmentIndex == 2) {
            
            label.backgroundColor = UIColor.yellow
        }
        
        if (backgroundColorSeg.selectedSegmentIndex == 3) {
            
            label.backgroundColor = UIColor.blue
        }
    }
    
    
    
    
    
    

}










