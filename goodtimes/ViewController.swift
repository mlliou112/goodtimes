//
//  ViewController.swift
//  goodtimes
//
//  Created by Michael Liou on 10/10/15.
//  Copyright © 2015 Michael Liou. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    // MARK: Properties
    let passcode = "1234"
    
    
    @IBOutlet weak var passcodeTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        passcodeTextField.text = textField.text
    }
    
    
    // MARK: Actions
    
    @IBAction func submitButton(sender: UIButton) {
        //checkCode.text = "Default Text"
        if passcodeTextField.text == passcode{
            print("Button pressed 👍")
        } else {
            let alertController = UIAlertController(title: "Incorrect Passcode", message:
                "Enter correct passcode!", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
        }
    }
    

}

