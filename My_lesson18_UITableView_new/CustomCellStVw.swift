//
//  CustomCellStVw.swift
//  My_lesson18_UITableView_new
//
//  Created by Oleg Chudnovskij on 06.05.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class CustomCellStVw: TableCell {
    
    @IBOutlet var stackView : UIStackView?

    func setup(text1: String?, text2: String?) {
        stackView?.subviews.forEach() { view in
            stackView?.removeArrangedSubview(view)
            view.removeFromSuperview()
        }
        
        if let text1 = text1 {
            let label = UILabel()
            label.text = text1
            label.numberOfLines = 0
            label.backgroundColor = .magenta
            stackView?.addArrangedSubview(label)
        }
        
        if let text2 = text2 {
            let label = UILabel()
            label.text = text2
            label.numberOfLines = 0
            label.backgroundColor = .yellow
            stackView?.addArrangedSubview(label)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        stackView?.spacing = 10
    }
}
