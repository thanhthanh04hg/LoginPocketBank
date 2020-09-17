//
//  LoginViewController.swift
//  Login
//
//  Created by Macbook on 9/8/20.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var mobileTf: UILabel!
    var bottomLine = CALayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        bottomLine.frame = CGRect(x: 0, y: 60, width: view.bounds.width-2, height: 1.0)
       bottomLine.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
       mobileTf.layer.addSublayer(bottomLine)
    }
    

    
}
