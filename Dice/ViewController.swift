//
//  ViewController.swift
//  Dice
//
//  Created by kamal chandar on 23/03/25.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlet allows to reference an UI Element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //WHO        //WHAT    //VALUE
        diceImageView1.image = UIImage(named: "DiceSix")
        //alpha value requires CGFloat 1 means fully visible
        diceImageView1.alpha = CGFloat(0.5)
        
        diceImageView2.image = UIImage(named: "DiceSix")
        diceImageView2.alpha = CGFloat(0.5)
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let images = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
        
        diceImageView1.image = UIImage(named: images.randomElement() ?? "DiceOne")
        diceImageView1.alpha = CGFloat(1)
        
        diceImageView2.image = UIImage(named: images.randomElement() ?? "DiceOne")
        diceImageView2.alpha = CGFloat(1)
        
    }
    
}

