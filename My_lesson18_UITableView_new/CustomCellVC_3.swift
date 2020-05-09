//
//  CustomCellVC_3.swift
//  My_lesson18_UITableView_new
//
//  Created by Oleg Chudnovskij on 06.05.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
// 19-2 1:09

import UIKit

class CustomCellVC_3: TableCell {
    
    private let stackView = UIStackView()
    private let label1 = UILabel()
    private let label2 = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        label1.numberOfLines = 0
        label2.numberOfLines = 0

        self.addSubview(stackView)
        
        stackView.spacing = 10
        stackView.distribution = .equalSpacing
        stackView.axis = .vertical
        
        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(label2)

        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        stackView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        stackView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(text1: String?, text2: String?) {
        if let text = text1 {
            label1.text = text
        }
        if let text = text2 {
            label2.text = text
        }
    }
}
