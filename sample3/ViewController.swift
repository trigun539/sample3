//
//  ViewController.swift
//  sample3
//
//  Created by Edwin Perez on 4/11/15.
//  Copyright (c) 2015 eperez. All rights reserved.
//

import UIKit

func UIColorFromHex(rgbValue: UInt) -> UIColor {
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}

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
        self.usernameField.attributedPlaceholder = NSAttributedString(string:"Username",
            attributes:[NSForegroundColorAttributeName: UIColor.grayColor()])
        self.passwordField.attributedPlaceholder = NSAttributedString(string:"Password",
            attributes:[NSForegroundColorAttributeName: UIColor.grayColor()])
        self.passwordField.secureTextEntry = true
        self.loginBtn.setTitle("Login", forState: UIControlState.Normal)
        self.forgotPasswordBtn.setTitle("Forgot Password", forState: UIControlState.Normal)
        self.view.backgroundColor = UIColorFromHex(0xA1E8D9)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

