//
//  ViewController.swift
//  UITextField Test 03
//
//  Created by 김종현 on 04/04/2019.
//  Copyright © 2019 김종현. All rights reserved.
//

import UIKit
// 1
class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // 2.
        myTextField.delegate = self
        myTextField.clearButtonMode = UITextField.ViewMode.always
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let inString = myTextField.text
        print(inString!)
        myLabel.text = inString
        myTextField.text = ""
        myTextField.resignFirstResponder()
    }
    
    // delegate method
     // called when 'return' key pressed. return NO to ignore.
    // 3.
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        myTextField.resignFirstResponder()
        myTextField.backgroundColor = UIColor.yellow
        return true
    }
    
    public func textFieldShouldClear(_ textField: UITextField) -> Bool {
        view.backgroundColor = UIColor.green
        return true
    }
    
}

