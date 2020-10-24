//
//  ConsonantNamesGenerator.swift
//  Learn Korean
//
//  Created by Teresa Cheung on 6/2/20.
//  Copyright © 2020 Teresa Cheung. All rights reserved.
//

import UIKit

class ConsonantNamesGenerator: UIViewController {
    
    var korConSet = CardSet.koreanConArr
    var conNamesSet = CardSet.conNamesArr
    var curr = 0;
    var listSelect = "0";
    
    let blueCard = UIImage(named: "blueCard")
    let purpleCard = UIImage(named: "purpleCard")
    
    @IBAction func back(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var CharacterDisplay: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CharacterDisplay.titleLabel?.adjustsFontSizeToFitWidth = false
        CharacterDisplay.setTitle(korConSet[curr], for: .normal)
        CharacterDisplay.setBackgroundImage(blueCard, for: .normal)
        
    }
    
    @IBAction func Flip(_ sender: UIButton) {
        if(CharacterDisplay.currentTitle == korConSet[curr]){
            CharacterDisplay.titleLabel?.adjustsFontSizeToFitWidth = true
            CharacterDisplay.setTitle(conNamesSet[curr], for: .normal)
            CharacterDisplay.setBackgroundImage(purpleCard, for: .normal)
            
        } else if(CharacterDisplay.currentTitle == conNamesSet[curr]){
            CharacterDisplay.titleLabel?.adjustsFontSizeToFitWidth = false
            CharacterDisplay.setTitle(korConSet[curr], for: .normal)
            CharacterDisplay.setBackgroundImage(blueCard, for: .normal)
            
        } else {
            CharacterDisplay.titleLabel?.adjustsFontSizeToFitWidth = false
            CharacterDisplay.setTitle(korConSet[curr], for: .normal)
            CharacterDisplay.setBackgroundImage(blueCard, for: .normal)
            
        }
        print(listSelect)
    }
    @IBAction func NextCharacter(_ sender: UIButton) {
        curr += 1
        if(curr == 19){
            curr = 0
        }
        CharacterDisplay.setTitle(korConSet[curr], for: .normal)
        CharacterDisplay.setBackgroundImage(blueCard, for: .normal)
    }
    
}
