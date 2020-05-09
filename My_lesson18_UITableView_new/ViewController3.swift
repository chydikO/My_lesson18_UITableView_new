//
//  ViewController3.swift
//  My_lesson18_UITableView_new
//
//  Created by Oleg Chudnovskij on 06.05.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    
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
            
            tableView.register(CustomCellVC_3.self, forCellReuseIdentifier: CustomCellVC_3.reuseIdentifier)
        }
    }


    extension ViewController3: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 100
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            // ессть ли свободная яцейка с ID?
            
            let cell = tableView.dequeueReusableCell(withIdentifier: CustomCellVC_3.reuseIdentifier, for: indexPath)
            cell.accessoryType = .disclosureIndicator

            if let cell = cell as? CustomCellVC_3 {
                cell.setup(text1: "ViewController3", text2: "\(indexPath.row)")
            }
            return cell
        }
    }
        
 extension ViewController3: UITableViewDelegate {
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("section - \(indexPath.section) row - \(indexPath.row)")
            
            //снять выделение с выбранной ячейки
            tableView.deselectRow(at: indexPath, animated: true)
        }
}
