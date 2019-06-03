//
//  ViewController.swift
//  shayna's code
//
//  Created by vinoth rajasekaran on 28/12/17.
//  Copyright © 2017 none. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate{
    override func viewDidLoad() {
        super.viewDidLoad()
        textfield.delegate = self
             // Do any additional setup after loading the view, typically from a nib.
    
    }
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBAction func button(_ sender: Any) {
    }
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        
        label.text = "Default Text"
    }
    

}






