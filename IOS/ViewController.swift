//
//  ViewController.swift
//  IOS
//
//  Created by macos on 2019-03-09.
//  Copyright © 2019 macos. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
@IBOutlet weak var UserNameOrEmail: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    @IBOutlet weak var InvalidUsernameOrEmail: UILabel!
    
    @IBOutlet weak var InvalidPassword: UILabel!
    
    @IBOutlet weak var LoginMessage: UILabel!
    
    @IBOutlet weak var RememberMe: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func LOGIBsumbit(_ sender: UIButton) {
        InvalidUsernameOrEmail.text = ""
        InvalidPassword.text = ""
        LoginMessage.text = ""
        if UserNameOrEmail.text == "amrit@.com"
        {
            if Password.text == "Amrit"
            {
                LoginMessage.text = "Login Successful"
            }
            else
            {
                InvalidPassword.text = "Invalid Password"
            }
        }
        else
        {
            InvalidUsernameOrEmail.text = "Invalid UserNameOrEmail"
        }
        
    }
    
}

