//
//  CustomCellVC_4.swift
//  My_lesson18_UITableView_new
//
//  Created by Oleg Chudnovskij on 09.05.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class CustomCellVC_4: TableCell {

    @IBOutlet private var label1: UILabel?
    @IBOutlet private var label2: UILabel?
    @IBOutlet private var logoImageView: UIImageView?

    func setup(text1: String, text2: String, logoName: String) {
        label1?.text = text1
        label2?.text = text2
        logoImageView?.image = UIImage(named: logoName)
    }
}
 
