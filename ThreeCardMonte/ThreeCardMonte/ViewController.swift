//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        
    }

    @IBAction func coverCards(_ sender: Any) {
    }
    
    @IBOutlet weak var card0: UIButton!

    @IBOutlet weak var card1: UIButton!
    
    @IBOutlet weak var card2: UIButton!
    
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func firstRandomCard(_ sender: UIButton){

        
//        let thisCardIsIt : (color: UIColor?, name : String)
        
        let card = 0...2
        let winningCard = card.randomElement()
//
//        sender.setImage(UIImage(named: images.randomElement()!), for: .normal
        switch sender.tag { // where does sender.tag come from originally
        case 0 :
            if winningCard == sender.tag {
                      sender.setImage(UIImage(named: "kingCard"), for: .normal)
                displayLabel.text = "You seleted the correct card.. you WON!!!! To play again click NEW GAME below"}
            
            else { print("you lose!!!!")
                sender.setImage(UIImage(named: "threeCard"), for: .normal)
                    displayLabel.text = "You seleted the incorrect card.. you lose!!!! To play again click NEW GAME below" }
            [card0, card1, card2].forEach({$0?.isEnabled = false})
            // need to be a closure in order for it to work
            
        case 1 :
          if winningCard == sender.tag {
                               sender.setImage(UIImage(named: "kingCard"), for: .normal)
                         displayLabel.text = "You seleted the correct card.. you WON!!!! To play again click NEW GAME below"}
                     
                     else { print("you lose!!!!")
                         sender.setImage(UIImage(named: "threeCard"), for: .normal)
                             displayLabel.text = "You seleted the incorrect card.. you lose!!!! To play again click NEW GAME below" }
    [card0, card1, card2].forEach({$0?.isEnabled = false})
            
        case 2 :
       if winningCard == sender.tag {
                                sender.setImage(UIImage(named: "kingCard"), for: .normal)
                          displayLabel.text = "You seleted the correct card.. you WON!!!! To play again click NEW GAME below"}
                      
                      else { print("you lose!!!!")
                          sender.setImage(UIImage(named: "threeCard"), for: .normal)
                              displayLabel.text = "You seleted the incorrect card.. you lose!!!! To play again click NEW GAME below" }
            [card0, card1, card2].forEach({$0?.isEnabled = false})
        default :
            displayLabel.text = "you didn't do it right so you still lost."
            }
    }
    @IBAction func startANewGame(_ sender: UIButton) {
        // shuffle the cards
       // firstRandomCard(UIButton).shuffle
        
        [card0, card1, card2].forEach({$0?.isEnabled = true})
        [card0, card1, card2].forEach({$0?.setImage(UIImage(named: "cardBackRed"), for: .normal)})
        
        
        
    }
    
    
    
}

