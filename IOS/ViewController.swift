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
    var user:String?
    var pass:String?
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func LOGIBsumbit(_ sender: UIButton) {
       loginplist()
    }
    func loginplist()
    {
        if let bundlePath = Bundle.main.path(forResource: "loginplist", ofType: "plist") {
            let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
            
            let loginplist = dictionary!["users"] as! NSArray
            for e in loginplist
            {
                let emp = e as! NSDictionary
                self.user=emp["username"] as? String
                self.pass=(emp["password"] as! String)
                
                if(user == UserNameOrEmail.text && pass == Password.text)
                {
                    print("login sucess")
                    print("username::\(self.UserNameOrEmail!)")
                    print("password::\(self.Password!)")
                }
                else
                {
                    print("login fail")
                    print("username::\(self.UserNameOrEmail!)")
                    print("password::\(self.Password!)")
                    print("----------------")
                    print(UserNameOrEmail.text! )
                    print(Password.text!)
                }
            }

    }
    
}

}
