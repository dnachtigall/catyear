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
        let convertConstant:Double = 7.5
        
        convertedYearsLabel.text = "\(catsNameTextField.text) is " + "\(humanYears * convertConstant)" + " cat years old."
        humanYearsTextField.resignFirstResponder()
        humanYearsTextField.text = ""
        convertedYearsLabel.hidden = false
    }

}

