//
//  ViewController4.swift
//  My_lesson18_UITableView_new
//
//  Created by Oleg Chudnovskij on 09.05.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
    private var tableView = UITableView(frame: CGRect.zero, style: UITableView.Style.plain )
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "CustomCellVC_4", bundle: nil), forCellReuseIdentifier: CustomCellVC_4.reuseIdentifier)
    }
    
}


extension ViewController4: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // ессть ли свободная яцейка с ID?
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomCellVC_4.reuseIdentifier, for: indexPath)
        cell.accessoryType = .disclosureIndicator
        
        if let cell = cell as? CustomCellVC_4 {
            cell.setup(text1: "ViewController4",  text2: "\(indexPath.row)", logoName: "cat2")
        }
        return cell
    }
}

extension ViewController4: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("section - \(indexPath.section) row - \(indexPath.row)")
        
        //снять выделение с выбранной ячейки
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
