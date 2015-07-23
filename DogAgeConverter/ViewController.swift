//
//  ViewController.swift
//  DogAgeConverter
//
//  Created by pun samuel on 23/7/15.
//  Copyright (c) 2015 Samuel Pun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelDogAge: UILabel!
    
    @IBOutlet weak var errorMessage: UILabel!
    

    @IBOutlet weak var humanAgeTextField: UITextField!
    
    let dogAgeConversionFactor = 7.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loa ding the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonCalculate(sender: UIButton) {
        
        var dogAgeDouble = Double((humanAgeTextField.text as NSString).doubleValue)
        
        if (dogAgeDouble == 0) && (humanAgeTextField.text != "0") {
            errorMessage.text = "Please enter numbers only"
            errorMessage.hidden = false
        } else {
            dogAgeDouble /= dogAgeConversionFactor
            errorMessage.hidden =  true
            labelDogAge.text = "Dog age is: " + "\(dogAgeDouble)"
            labelDogAge.hidden = false
            humanAgeTextField.resignFirstResponder()
        }
        
        
    }

}

