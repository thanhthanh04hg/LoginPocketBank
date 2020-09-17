//
//  Login_EmailViewController.swift
//  Login
//
//  Created by Macbook on 9/8/20.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class Login_EmailViewController: UIViewController {

    @IBOutlet var passTf: UITextField!
    @IBOutlet var userTf: UITextField!
    var bottomLine = CALayer()
    var underLine = CALayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        print(passTf.bounds.height + 3)
        bottomLine.frame = CGRect(x: 0, y: (passTf.bounds.height + 3)*2, width: view.bounds.width-2, height: 1.0)
        bottomLine.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        underLine.frame = CGRect(x: 0, y: (passTf.bounds.height + 3)*2, width: view.bounds.width-2, height: 1.0)
        underLine.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        userTf.layer.addSublayer(bottomLine)
        passTf.layer.addSublayer(underLine)
        
    }
    


}
