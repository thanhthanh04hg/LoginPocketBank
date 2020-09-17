//
//  ParentSignUpViewController.swift
//  Login
//
//  Created by Macbook on 9/9/20.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class ParentSignUpViewController: UIViewController,UITableViewDelegate {
    var titleList = ["Fisrt name" , "Last name","Email","Mobile number" ,"Date of birth","Password","Confirm password"]
    @IBOutlet var signupTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        signupTable.register(UINib(nibName: "TextBoxTableViewCell", bundle: nil), forCellReuseIdentifier: "TextBoxTableViewCell")

        signupTable.dataSource = self
        signupTable.delegate = self
    }
    
}
extension ParentSignUpViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextBoxTableViewCell") as! TextBoxTableViewCell
        cell.label.text = titleList[indexPath.row]
        cell.underImage.image = UIImage(named: "icon2")
        if indexPath.row == 0 {
            cell.upperImage.image = UIImage(systemName: "person.fill")
            return cell
        }
        else if indexPath.row == 1 {
            cell.upperImage.image = UIImage(systemName: "person.fill")
            return cell
        }
        else if indexPath.row == 2 {
            cell.upperImage.image = UIImage(systemName: "envelope.fill")
            return cell
        }
        else if indexPath.row == 3{
            cell.upperImage.image = UIImage(systemName: "phone.fill")
            return cell
        }
        else if indexPath.row == 4 {
            cell.upperImage.image = UIImage(systemName: "calendar")
            return cell
        }
        else {
            cell.upperImage.image = UIImage(systemName: "lock.fill")
//            cell.textBox.isSecureTextEntry = true
            return cell
        }

    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(80)
    }
    
}

