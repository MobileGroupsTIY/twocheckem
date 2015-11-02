//
//  ViewController.swift
//  TypingPractice
//
//  Created by Joe E. on 11/2/15.
//  Copyright © 2015 Joe E. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    var emojiArray = ["💩", "😱", "😭", "😤", "😄", "😍", "🎉"]


    @IBOutlet weak var practiceTextField: UITextField!
    @IBOutlet weak var practiceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillPhrase()

    }
    
    func fillPhrase(){
        
        practiceLabel.text = "Scary Poop"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        //we need to test the full textfield string == label string #1's need an array of phrases #2 [emoji:words] emoji's as keys and words as values!
        
        //if true change label to next phrase and the textfield
        
        return true
    
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        return true
        
        
    }


}


