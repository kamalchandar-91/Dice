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
    
    var leftDiceNumber = 0
    var rightDiceNumber = 5
    
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
    
    @IBAction func rollDiceWithVariables(_ sender: UIButton) {
        diceImageView1.image = UIImage(named:["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"][leftDiceNumber])
        diceImageView1.alpha = CGFloat(1)
        
        diceImageView2.image = UIImage(named:["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"][rightDiceNumber])
        diceImageView2.alpha = CGFloat(1)
        
        if leftDiceNumber == 5 {
            leftDiceNumber = 0
        }else {
            leftDiceNumber += 1
        }
        if rightDiceNumber == 0 {
            rightDiceNumber = 5
        }else {
            rightDiceNumber -= 1
        }
        
    }
    
    @IBAction func randomInteger(_ sender: UIButton) {
        diceImageView1.image = UIImage(named:["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"][Int.random(in: 0...5)])
        diceImageView1.alpha = CGFloat(1)
        
        diceImageView2.image = UIImage(named:["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"][Int.random(in: 0...5)])
        diceImageView2.alpha = CGFloat(1)
    }
    
}

