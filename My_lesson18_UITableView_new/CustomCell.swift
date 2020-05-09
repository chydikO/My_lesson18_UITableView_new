//
//  CustomCell.swift
//  My_lesson18_UITableView_new
//
//  Created by Oleg Chudnovskij on 06.05.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
// 1:06:09

import UIKit

class CustomCell: TableCell {

    @IBOutlet var label1: UILabel?
    @IBOutlet var label2 : UILabel?
    @IBOutlet var label2Bottom : NSLayoutConstraint?


    func setup(text1: String, text2: String?) {
        label1?.text = text1
        label2?.text = text2
        
        label2?.isHidden = (text2 == nil)
        
        if let label2 = label2?.isHidden, label2 == true {
            label2Bottom?.constant = 0
        } else {
            label2Bottom?.constant = 10
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        label1?.backgroundColor = .green
        label2?.backgroundColor = .cyan
    }
}
