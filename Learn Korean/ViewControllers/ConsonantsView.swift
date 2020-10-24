//
//  ConsonantsView.swift
//  Learn Korean
//
//  Created by Teresa Cheung on 6/1/20.
//  Copyright © 2020 Teresa Cheung. All rights reserved.
//

import Foundation
import UIKit

class ConsonantsView: UIViewController {
    
    var listSelect = "0";
    
    @IBAction func back(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is ListGeneratorViewController
        {
            let vc = segue.destination as? ListGeneratorViewController
            vc?.listSelect = listSelect
        }
    }
    
    @IBAction func GenerateAllCon(_ sender: UIButton) {
        listSelect = "1"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
