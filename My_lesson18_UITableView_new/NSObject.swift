//
//  NSObject.swift
//  My_lesson18_UITableView_new
//
//  Created by Oleg Chudnovskij on 07.05.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import Foundation

extension NSObject {
    var className: String {
        return String(describing: self)
    }
    
    static var className: String {
        return String(describing: self)
    }
}
