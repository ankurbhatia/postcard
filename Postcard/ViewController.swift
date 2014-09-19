//
//  ViewController.swift
//  Postcard
//
//  Created by Ankur Bhatia on 9/19/14.
//  Copyright (c) 2014 Ankur Bhatia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var messageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nameTextFieldModified(sender: UITextField) {
        messageLabel.text = ""
        mailButton.setTitle("Send Mail", forState: UIControlState.Normal)
    }

    @IBAction func messageTextFieldModified(sender: UITextField) {
        messageLabel.text = ""
        mailButton.setTitle("Send Mail", forState: UIControlState.Normal)
    }
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.text = messageTextField.text
        nameTextField.text = ""
        messageTextField.text = ""
        mailButton.setTitle("Mail Sent", forState:UIControlState.Normal)
        messageLabel.hidden = false
        messageTextField.resignFirstResponder()
    }
}

