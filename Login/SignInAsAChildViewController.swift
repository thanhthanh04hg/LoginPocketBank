//
//  SignInAsAChildViewController.swift
//  Login
//
//  Created by Macbook on 9/8/20.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class SignInAsAChildViewController: UIViewController {
    var underLinePass = CALayer()
    var underLineUser = CALayer()
    @IBOutlet var passTf: UITextField!
    @IBOutlet var userTf: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
         print(passTf.bounds.height)
        underLinePass.frame = CGRect(x: 0, y: (passTf.bounds.height)*2, width: view.bounds.width-2, height: 1.0)
        underLinePass.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        underLineUser.frame = CGRect(x: 0, y: (passTf.bounds.height)*2, width: view.bounds.width-2, height: 1.0)
        underLineUser.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        userTf.layer.addSublayer(underLineUser)
        passTf.layer.addSublayer(underLinePass)
        
    }
    

    
}
