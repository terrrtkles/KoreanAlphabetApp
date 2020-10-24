//
//  ConsonantNamesView.swift
//  Learn Korean
//
//  Created by Teresa Cheung on 6/2/20.
//  Copyright © 2020 Teresa Cheung. All rights reserved.
//

import UIKit

class ConsonantNamesView: UIViewController {
    
    var listSelect = "0"
    
    @IBAction func back(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is VowelsGenerator
        {
            let vc = segue.destination as? VowelsGenerator
            vc?.listSelect = listSelect
        }
    }
    
    
    @IBAction func ListSelect(_ sender: UIButton) {
        listSelect = "1"
    }
}
