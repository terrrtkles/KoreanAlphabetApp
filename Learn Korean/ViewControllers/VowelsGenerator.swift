//
//  VowelsGenerator.swift
//  Learn Korean
//
//  Created by Teresa Cheung on 6/2/20.
//  Copyright © 2020 Teresa Cheung. All rights reserved.
//

import UIKit

class VowelsGenerator: UIViewController {
    
    var korVowSet = CardSet.koreanVowArr
    var engVowSet = CardSet.englishVowArr
    var curr = 0;
    var listSelect = "0";
    
    let blueCard = UIImage(named: "blueCard")
    let purpleCard = UIImage(named: "purpleCard")
    
    @IBOutlet weak var CharacterDisplay: UIButton!
    
    @IBAction func back(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
       
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CharacterDisplay.setTitle(korVowSet[curr], for: .normal)
        CharacterDisplay.setBackgroundImage(blueCard, for: .normal)
    }
    
    @IBAction func Flip(_ sender: UIButton) {
        if(CharacterDisplay.currentTitle == korVowSet[curr]){
            CharacterDisplay.setTitle(engVowSet[curr], for: .normal)
            CharacterDisplay.setBackgroundImage(purpleCard, for: .normal)
        } else if(CharacterDisplay.currentTitle == engVowSet[curr]){
            CharacterDisplay.setTitle(korVowSet[curr], for: .normal)
            CharacterDisplay.setBackgroundImage(blueCard, for: .normal)
        } else {
            CharacterDisplay.setTitle(korVowSet[curr], for: .normal)
            CharacterDisplay.setBackgroundImage(blueCard, for: .normal)
        }
        print(listSelect)
    }
    @IBAction func NextCharacter(_ sender: UIButton) {
        curr += 1
        if(curr == 21){
            curr = 0
        }
        CharacterDisplay.setTitle(korVowSet[curr], for: .normal)
        CharacterDisplay.setBackgroundImage(blueCard, for: .normal)
    }
}
