//
//  KidViewController.swift
//  Login
//
//  Created by Macbook on 8/24/20.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class KidViewController: UIViewController , UITableViewDelegate{

    @IBOutlet var listChildTable: UITableView!
    @IBOutlet var nextBtn: UIButton!
    @IBOutlet var underView: UIView!
    @IBOutlet var addBtn: UIButton!
    @IBOutlet var topView: UIView!
    var listName = ["JohnLim" , "Anadia"]
    override func viewDidLoad() {
            super.viewDidLoad()
            topView.layer.maskedCorners = [.layerMinXMaxYCorner]
            topView.roundCorners(cornerRadius: 60.0)
            underView.layer.maskedCorners = [.layerMaxXMinYCorner]
            underView.roundCorners(cornerRadius: 60.0)
            addBtn.setImage(UIImage(named: "plus square"), for: .normal)
            listChildTable.delegate = self
            listChildTable.dataSource = self
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

extension KidViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listName.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "KidCell")
        cell?.imageView?.image = UIImage(named: listName[indexPath.row])
        cell?.detailTextLabel?.text = listName[indexPath.row] + "@pocketbank.com"
        cell?.textLabel?.text = listName[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "List your Childs"
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100)
    }
}


extension UIView {
   func roundCorners(cornerRadius: Double) {
        self.layer.cornerRadius = CGFloat(cornerRadius)
        self.clipsToBounds = true
        
   }
}


