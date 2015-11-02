//
//  ViewController.swift
//  TypingPractice
//
//  Created by Joe E. on 11/2/15.
//  Copyright © 2015 Joe E. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        return true
    
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        return true
        
        
    }


}


