//
//  NonKidViewController.swift
//  Login
//
//  Created by Macbook on 8/24/20.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class NonKidViewController: UIViewController {

    @IBOutlet var underView: UIView!
    @IBOutlet var topView: UIView!
    @IBOutlet var nextBtn: UIButton!
    @IBOutlet var addBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        topView.layer.maskedCorners = [.layerMinXMaxYCorner]
        topView.roundCorners(cornerRadius: 60.0)
        underView.layer.maskedCorners = [.layerMaxXMinYCorner]
        underView.roundCorners(cornerRadius: 60.0)
        addBtn.setImage(UIImage(named: "plus square"), for: .normal)
        
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

