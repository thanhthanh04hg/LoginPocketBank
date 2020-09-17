//
//  TextBoxTableViewCell.swift
//  Login
//
//  Created by Macbook on 8/26/20.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class TextBoxTableViewCell: UITableViewCell {

    @IBOutlet var underImage: UIImageView!
    @IBOutlet var upperImage: UIImageView!
    @IBOutlet var textBox: UITextField!
    @IBOutlet var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
