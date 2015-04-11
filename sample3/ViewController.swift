//
//  ViewController.swift
//  sample3
//
//  Created by Edwin Perez on 4/11/15.
//  Copyright (c) 2015 eperez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theLabel: UILabel!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var forgotPasswordBtn: UIButton!
    
    // Event Handlers
    @IBAction func clickEvent(sender: AnyObject) {
        theLabel.text = "Login!"
    }
    
    @IBAction func forgotPassword(sender: AnyObject) {
        theLabel.text = "Forgot!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.theLabel.text = "Login"
        self.usernameField.text = "Username"
        self.passwordField.text = "Password"
        self.loginBtn.setTitle("Login", forState: UIControlState.Normal)
        self.forgotPasswordBtn.setTitle("Forgot Password", forState: UIControlState.Normal)
        self.view.backgroundColor = UIColor.yellowColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

