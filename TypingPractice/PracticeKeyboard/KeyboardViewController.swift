//
//  KeyboardViewController.swift
//  PracticeKeyboard
//
//  Created by Susanne Burnham on 11/2/15.
//  Copyright © 2015 Joe E. All rights reserved.
//

import UIKit

private let POO = "💩"
private let SCARY = "😱"
private let SAD = "😭"
private let ANGRY = "😤"
private let HAPPY = "😀"
private let LOVE = "😍"
private let PARTY = "🎉"
private let DEFAULT = ""

typealias Phrases = [String:String]

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!

    @IBAction func touchedEmoji(button: UIButton) {
        guard let text = button.titleLabel?.text else { return }
        switch text {
        case emojiArray[0]:
            textDocumentProxy.insertText(emojiDictionary[POO]!)
        case emojiArray[1]:
            textDocumentProxy.insertText(emojiDictionary[SCARY]!)
        case emojiArray[2]:
            textDocumentProxy.insertText(emojiDictionary[SAD]!)
        case emojiArray[3]:
            textDocumentProxy.insertText(emojiDictionary[ANGRY]!)
        case emojiArray[4]:
            textDocumentProxy.insertText(emojiDictionary[HAPPY]!)
        case emojiArray[5]:
            textDocumentProxy.insertText(emojiDictionary[LOVE]!)
        case emojiArray[6]:
            textDocumentProxy.insertText(emojiDictionary[PARTY]!)
        default:
            textDocumentProxy.insertText(DEFAULT)
            
        }
        
    }
    
    let emojiArray = [POO, SCARY, SAD, ANGRY, HAPPY, LOVE, PARTY]
    

    
    let emojiDictionary: [String:String] = [
        POO : "poo",
        SCARY: "scary",
        SAD : "sad",
        ANGRY: "angry",
        HAPPY: "happy",
        LOVE: "love",
        PARTY : "party"
    ]
    
    let phraseDictionary = [
        
        [POO : POO] : "big poo",
        [SCARY : POO] : "scary poo",
        [SAD:POO] : "sad poo",
        [ANGRY : POO] : "angry poo",
        [HAPPY : POO] : "happy poo",
        [LOVE : POO] : "love poo",
        [PARTY : POO] : "party poo",
        
        [SCARY: PARTY] : "scary party",
        [SAD: PARTY] : "sad party",
        [ANGRY: PARTY] : "angry party",
        [HAPPY: PARTY] : "happy party",
        [LOVE : PARTY] : "love party",
        [PARTY : PARTY] : "big party",
    ]
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Perform custom UI setup here
        self.nextKeyboardButton = UIButton(type: .System)
    
        self.nextKeyboardButton.setTitle(NSLocalizedString("Next Keyboard", comment: "Title for 'Next Keyboard' button"), forState: .Normal)
        self.nextKeyboardButton.sizeToFit()
        self.nextKeyboardButton.translatesAutoresizingMaskIntoConstraints = false
    
        self.nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(self.nextKeyboardButton)
    
        let nextKeyboardButtonLeftSideConstraint = NSLayoutConstraint(item: self.nextKeyboardButton, attribute: .Left, relatedBy: .Equal, toItem: self.view, attribute: .Left, multiplier: 1.0, constant: 0.0)
        let nextKeyboardButtonBottomConstraint = NSLayoutConstraint(item: self.nextKeyboardButton, attribute: .Bottom, relatedBy: .Equal, toItem: self.view, attribute: .Bottom, multiplier: 1.0, constant: 0.0)
        self.view.addConstraints([nextKeyboardButtonLeftSideConstraint, nextKeyboardButtonBottomConstraint])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    
        var textColor: UIColor
        let proxy = self.textDocumentProxy
        if proxy.keyboardAppearance == UIKeyboardAppearance.Dark {
            textColor = UIColor.whiteColor()
        } else {
            textColor = UIColor.blackColor()
        }
        self.nextKeyboardButton.setTitleColor(textColor, forState: .Normal)
    }

}
