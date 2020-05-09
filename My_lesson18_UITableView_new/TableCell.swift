//
//  TableCell.swift
//  My_lesson18_UITableView_new
//
//  Created by Oleg Chudnovskij on 07.05.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {

    static var reuseIdentifier: String {
        return self.className
    }
}
