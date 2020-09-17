//
//  NameKidViewController.swift
//  Login
//
//  Created by Macbook on 8/26/20.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class NameKidViewController: UIViewController,UITableViewDelegate {

    @IBOutlet var mainView: UIView!
    @IBOutlet var addKidTableView: UITableView!
    @IBOutlet var nextBtn: UIButton!
    @IBOutlet var underView: UIView!
    @IBOutlet var topView: UIView!
    var listTitle = ["Date","Email","Password","Re-enter password"]
    var listDetail = ["Type date", "Type email","Type password","Type re-enter password"]
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 20.0
        mainView.layer.shadowColor = UIColor.gray.cgColor
        mainView.layer.shadowOpacity = 0.5
        mainView.layer.shadowOffset = .zero
        mainView.layer.shadowRadius = 2.5
        topView.layer.maskedCorners = [.layerMinXMaxYCorner]
        topView.roundCorners(cornerRadius: 60.0)
        underView.layer.maskedCorners = [.layerMaxXMinYCorner]
        underView.roundCorners(cornerRadius: 60.0)
        addKidTableView.register(UINib(nibName: "TextBoxTableViewCell", bundle: nil), forCellReuseIdentifier: "TextBoxTableViewCell")
        addKidTableView.dataSource = self
        addKidTableView.delegate = self
    }
    
    func setGradientBackground(colorLeft: UIColor, colorRight: UIColor) {
         let gradientLayer = CAGradientLayer()
         gradientLayer.colors = [colorRight.cgColor, colorLeft.cgColor]
         gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
         gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
         gradientLayer.locations = [0, 1]
         gradientLayer.frame = topView.bounds
         topView.layer.insertSublayer(gradientLayer, at: 0)
    }
     func setGradientBackgroundBtn(colorLeft: UIColor, colorRight: UIColor) {
          let gradientLayer = CAGradientLayer()
          gradientLayer.colors = [colorRight.cgColor, colorLeft.cgColor]
          gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
          gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
          gradientLayer.locations = [0, 1]
          gradientLayer.frame = nextBtn.bounds
          nextBtn.layer.insertSublayer(gradientLayer, at: 0)
     }
     override func viewDidAppear(_ animated: Bool) {
         super.viewDidAppear(animated)
         setGradientBackground(colorLeft: #colorLiteral(red: 0.0203144718, green: 0.8658524752, blue: 0.8856807351, alpha: 1), colorRight: #colorLiteral(red: 0.08994244784, green: 0.6625871062, blue: 0.682299614, alpha: 1))
         setGradientBackgroundBtn(colorLeft: #colorLiteral(red: 0.0203144718, green: 0.8658524752, blue: 0.8856807351, alpha: 1), colorRight: #colorLiteral(red: 0.08994244784, green: 0.6625871062, blue: 0.682299614, alpha: 1))
     }
    
    

}
extension NameKidViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextBoxTableViewCell") as! TextBoxTableViewCell
        cell.label.text = listTitle[indexPath.row]
        cell.textBox.placeholder = listDetail[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(80)
    }
    
}
