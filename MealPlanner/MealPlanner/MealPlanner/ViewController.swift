//
//  ViewController.swift
//  MealPlanner
//
//  Created by vinoth rajasekaran on 27/12/17.
//  Copyright © 2017 none. All rights reserved.
//
// coded by shayna

import UIKit

class ViewController: UIViewController,UITextFieldDelegate{
    
    
    @IBOutlet weak var testlabel: UILabel!
    
    @IBOutlet weak var abcd: UITextField!
    
    @IBAction func testbutton(_ sender: UIButton) {
        testlabel.text = "Default Text"
    }
    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        testlabel.text = textField.text
    }
    
    


}

