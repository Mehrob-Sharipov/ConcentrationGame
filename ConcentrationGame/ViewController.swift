//
//  ViewController.swift
//  ConcentrationGame
//
//  Created by Sharipov Mehrob on 29.07.2022.
//

import UIKit

class ViewController: UIViewController {

   
    var touches = 0 {
        didSet {
            touchLable.text = String("Touches: \(touches)")
        }
    }
    
    func flipButton (emoji:String, button:UIButton){
        
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.01348185912, green: 0.7802809477, blue: 0.744160831, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
        
        
    }
    
    let emojiCollection = ["🦊","🐰","🦊","🐰"]
    
    
    
    
    
    
    
    @IBOutlet var buttonCollection: [UIButton]!
    @IBOutlet weak var touchLable: UILabel!
    @IBAction func buttonAction(_ sender: UIButton) {
        touches += 1
        if let buttonIndex = buttonCollection.firstIndex(of: sender) {
            flipButton(emoji: emojiCollection[buttonIndex], button: sender)
                
        }
        
    }
    
    


}

