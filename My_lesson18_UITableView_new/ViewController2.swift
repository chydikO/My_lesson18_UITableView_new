//
//  ViewController2.swift
//  My_lesson18_UITableView_new
//
//  Created by OlegChudnovskiy on 05.05.2020.
//  Copyright © 2020 OlegChudnovskiy. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet private var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}


extension ViewController2: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var result = 0
        
        switch section {
        case 0:
            result = 5
        case 1:
            result = 8
        case 2:
            result = 12
        case 3:
            result = 2
        case 4:
            result = 4
        case 5:
            result = 3
        default:
            result = 0
        }
        
        return result
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cellIdentier = ""
        
        switch indexPath.section {
        case 1:
            cellIdentier = "cell_id_2"
        case 2:
            cellIdentier = "cell_id_3"
        case 3:
            cellIdentier = "cell_id_4"
        case 4:
            cellIdentier = CustomCell.reuseIdentifier
        case 5:
            cellIdentier = CustomCellStVw.reuseIdentifier
        default:
            cellIdentier = "cell_id_1"
        }
        
        // ессть ли свободная яцейка с ID?
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentier, for: indexPath)
        cell.accessoryType = .disclosureIndicator
        
        if let cell = cell as? CustomCell {
            cell.setup(text1: "Хороший компрессор, купил в 2009 году на рынке, работает досихпор, точнее дорабатывает свой ресурс. Эксплуатировался фактически каждый день и круглый год в неотапливаемом гараже.", text2: "Может немного шумный, не критично.")
        } else if let cell = cell as? CustomCellStVw {
            cell.setup(text1: "Хороший компрессор, купил в 2009 году на рынке, работает досихпор, точнее дорабатывает свой ресурс. Эксплуатировался фактически каждый день и круглый год в неотапливаемом гараже.", text2: "Может немного шумный, не критично.")
        } else {
            cell.textLabel?.text = "row: \(indexPath.row)"
            cell.detailTextLabel?.text = "section: \(indexPath.section)"
        }
        return cell
    }
}

extension ViewController2: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("section - \(indexPath.section) row - \(indexPath.row)")
        
        //снять выделение с выбранной ячейки
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var result = UITableView.automaticDimension
        if indexPath.section == 1 {
            result = 75
        }
        return result
    }
    
    //MARK: - Header
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section != 1 {
            return "title For Header In Section - \(section)"
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 1 {
            let view = UIView()
            view.backgroundColor = .red
            
            let label = UILabel()
            label.text = "title For Header In Section - \(section)"
            label.textColor = .white
            view.addSubview(label)
            
            label.translatesAutoresizingMaskIntoConstraints = false
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5).isActive = true
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 5).isActive = true
            return view
        }
        return nil
    }
    
    //высота Header
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 1 {
            return 100
        }
        return UITableView.automaticDimension
    }
    
    //MARK: - Footer
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "title For Footer In Section - \(section)"
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if section == 1 {
            let view = UIView()
            view.backgroundColor = .yellow
            let label = UILabel()
            label.text = "title For Footer In Section - \(section)"
            view.addSubview(label)
            
            label.translatesAutoresizingMaskIntoConstraints = false
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5).isActive = true
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 5).isActive = true
            
            return view
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 1 {
            return 50
        }
        return UITableView.automaticDimension
    }
}
