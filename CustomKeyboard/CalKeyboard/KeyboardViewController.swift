//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

//PLEASE NOTE: I know that the function names should be more
//practical, but I wanted to have fun with the project and the function names.

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    
    @IBOutlet weak var swerveButton: UIButton!
    
    @IBOutlet weak var kanyeButton: UIButton!
    
    @IBOutlet weak var returnButton: UIButton!
    
    @IBOutlet weak var deleteButton: UIButton!
    
    @IBOutlet weak var fireButton: UIButton!
    
    @IBOutlet weak var fuegoButton: UIButton!
    
    @IBOutlet weak var sameButton: UIButton!
    
    @IBOutlet weak var freshmanButton: UIButton!
    
    @IBOutlet weak var spaceBar: UIButton!
    
    @IBOutlet weak var creamButton: UIButton!
    
    @IBOutlet weak var fuckingButton: UIButton!
    
    @IBOutlet weak var upeButton: UIButton!
    
    @IBOutlet weak var wapButton: UIButton!
    
    @IBOutlet weak var bernieButton: UIButton!
    
    @IBOutlet weak var yeeeButton: UIButton!
    

    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
        loadButtons()
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
    }
    
    
    
    func kanyee() {
        (textDocumentProxy as UIKeyInput).insertText("You may be talented but you're not Kanye")
    }
    
    func checkIfSwerve() {
        (textDocumentProxy as UIKeyInput).insertText("swerve")
    }
    
    func returnThatShit() {
        (textDocumentProxy as UIKeyInput).insertText("\n")
    }
    
    func shawtyOnFire() {
        (textDocumentProxy as UIKeyInput).insertText("fire")
    }
    
    func deleteOne() {
        (textDocumentProxy as UITextDocumentProxy).deleteBackward()
    }
    
    func shawtyOnFuego() {
        (textDocumentProxy as UIKeyInput).insertText("fuego")
    }
    
    func mightyYiwen() {
        (textDocumentProxy as UIKeyInput).insertText("same")
    }
    
    func freshmanFreshman() {
        (textDocumentProxy as UIKeyInput).insertText("freshman")
    }
    
    func inSpace() {
        (textDocumentProxy as UIKeyInput).insertText(" ")
    }
    
    func creamEverywhere() {
        (textDocumentProxy as UIKeyInput).insertText("cream")
    }
    
    func fuckingA() {
        (textDocumentProxy as UIKeyInput).insertText("fuckin'")
    }
    
    func premierFunction() {
        (textDocumentProxy as UIKeyInput).insertText("Upsilon Pi Epsilon: The Premier CS Honors Society")
    }
    
    func wapWap() {
        (textDocumentProxy as UIKeyInput).insertText("Got a glock in my 'rari")
    }
    
    func feelTheBern() {
        (textDocumentProxy as UIKeyInput).insertText("#FeelTheBern")
    }
    
    func kCarlYeee() {
        (textDocumentProxy as UIKeyInput).insertText("yeee")
    }
    
    func loadButtons() {
        swerveButton.addTarget(self, action: "checkIfSwerve", forControlEvents: .TouchUpInside)
        
        kanyeButton.addTarget(self, action: "kanyee", forControlEvents: .TouchUpInside)
        
        returnButton.addTarget(self, action: "returnThatShit", forControlEvents: .TouchUpInside)
        
        deleteButton.addTarget(self, action: "deleteOne", forControlEvents: .TouchUpInside)
        
        fireButton.addTarget(self, action: "shawtyOnFire", forControlEvents: .TouchUpInside)
        
        fuegoButton.addTarget(self, action: "shawtyOnFuego", forControlEvents: .TouchUpInside)
        
        sameButton.addTarget(self, action: "mightyYiwen", forControlEvents: .TouchUpInside)
        
        freshmanButton.addTarget(self, action: "freshmanFreshman", forControlEvents: .TouchUpInside)
        
        spaceBar.addTarget(self, action: "inSpace", forControlEvents: .TouchUpInside)
        
        creamButton.addTarget(self, action: "creamEverywhere", forControlEvents: .TouchUpInside)
        
        fuckingButton.addTarget(self, action: "fuckingA", forControlEvents: .TouchUpInside)
        
        upeButton.addTarget(self, action: "premierFunction", forControlEvents: .TouchUpInside)
        
        wapButton.addTarget(self, action: "wapWap", forControlEvents: .TouchUpInside)
        
        bernieButton.addTarget(self, action: "feelTheBern", forControlEvents: .TouchUpInside)
        
        yeeeButton.addTarget(self, action: "kCarlYeee", forControlEvents: .TouchUpInside)

    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        
    }


}
