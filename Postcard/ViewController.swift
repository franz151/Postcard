//
//  ViewController.swift
//  Postcard
//
//  Created by Trevor Froehlich on 9/11/14.
//  Copyright (c) 2014 Franz Froehlich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                            // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
                            // Dispose of any resources that can be recreated.
        
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
                            //Code will evaluate when we press the button
                            //New Verison
        messageLabel.hidden = false
        nameLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        nameLabel.text = enterNameTextField.text
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        nameLabel.textColor = UIColor.blueColor()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    
}

