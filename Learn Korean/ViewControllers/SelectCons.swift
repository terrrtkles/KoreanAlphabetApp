//
//  SelectCons.swift
//  Learn Korean
//
//  Created by Teresa Cheung on 6/2/20.
//  Copyright © 2020 Teresa Cheung. All rights reserved.
//

import UIKit

class SelectCons: UITableViewController {
    
    var set = CardSet.koreanConArr
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCell.AccessoryType.checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.checkmark
        }
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return set.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cc", for: indexPath)
        
        cell.textLabel?.text = set[indexPath.row]
        
        return cell
    }
}
