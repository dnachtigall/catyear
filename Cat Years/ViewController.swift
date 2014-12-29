//
//  ViewController.swift
//  Cat Years
//
//  Created by David Nachtigall on 28.12.14.
//  Copyright (c) 2014 David Nachtigall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var convertedYearsLabel: UILabel!
    @IBOutlet weak var catsNameTextField: UITextField!
    @IBOutlet weak var catImageDisplayed: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let humanYears = Double((humanYearsTextField.text as NSString).doubleValue)
        
        if humanYears < 1 {
            convertedYearsLabel.text = "Please enter a valid age."
        }
        
        else if humanYears == 1 {
            
            convertedYearsLabel.text = "\(catsNameTextField.text) is " + "15 catyears old."
        }
        
        else if humanYears == 2 {
            convertedYearsLabel.text = "\(catsNameTextField.text) is " + "24 catyears old."
        }
        
        else {
            let baseage = 24
            let multiplier = humanYears - 2
            let convertconstant = 4
            
            convertedYearsLabel.text = "\(catsNameTextField.text) is " + "\(Double(baseage) + (multiplier * Double(convertconstant))) catyears old."
        }
        
        
        humanYearsTextField.resignFirstResponder()
        humanYearsTextField.text = ""
        catsNameTextField.text = ""
        convertedYearsLabel.hidden = false
    }

}

