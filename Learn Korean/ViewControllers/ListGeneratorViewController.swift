//
//  ListGeneratorViewController.swift
//  Learn Korean
//
//  Created by Teresa Cheung on 6/1/20.
//  Copyright © 2020 Teresa Cheung. All rights reserved.
//

import UIKit

class ListGeneratorViewController: UIViewController{
    
    var listSelect = "0";
    
    var korConSet: [String] = []
    var engConSet: [String] = []
    var curr = 0;
    
    let blueCard = UIImage(named: "blueCard")
    let purpleCard = UIImage(named: "purpleCard")
    
    @IBOutlet weak var CharacterDisplay: UIButton!
    
    @IBAction func back(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(listSelect == "1") {
            korConSet = CardSet.koreanConArr
            engConSet = CardSet.englishConArr
            CharacterDisplay.setTitle(korConSet[curr], for: .normal)
            CharacterDisplay.setBackgroundImage(blueCard, for: .normal)
        } else if(listSelect == "2"){
            
        }
    }
    
    @IBAction func NextCharacter(_ sender: UIButton) {
        curr += 1
        if(curr == 19){
            curr = 0
        }
        CharacterDisplay.setTitle(korConSet[curr], for: .normal)
        CharacterDisplay.setBackgroundImage(blueCard, for: .normal)
    }
    
    @IBAction func Flip(_ sender: UIButton) {
        if(CharacterDisplay.currentTitle == korConSet[curr]){
            CharacterDisplay.setTitle(engConSet[curr], for: .normal)
            CharacterDisplay.setBackgroundImage(purpleCard, for: .normal)
        } else if(CharacterDisplay.currentTitle == engConSet[curr]){
            CharacterDisplay.setTitle(korConSet[curr], for: .normal)
            CharacterDisplay.setBackgroundImage(blueCard, for: .normal)
        } else {
            CharacterDisplay.setTitle(korConSet[curr], for: .normal)
            CharacterDisplay.setBackgroundImage(blueCard, for: .normal)
        }
        print(listSelect)
    }
    
}
