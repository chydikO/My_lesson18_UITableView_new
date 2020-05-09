//
//  ViewController.swift
//  My_lesson18_UITableView_new
//
//  Created by OlegChudnovskiy on 05.05.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet private var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}


extension ViewController1: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // ессть ли свободная яцейка с ID?
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_id_1", for: indexPath)
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
}
    
    extension ViewController1: UITableViewDelegate {
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("section - \(indexPath.section) row - \(indexPath.row)")
            
            //снять выделение с выбранной ячейки
            tableView.deselectRow(at: indexPath, animated: true)
        }
}
