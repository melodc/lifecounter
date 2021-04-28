//
//  ViewController.swift
//  LifeCounter2
//
//  Created by Melody Chou on 4/27/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var p1count: UILabel!
    
    @IBOutlet weak var p2count: UILabel!
    
    @IBOutlet weak var p3count: UILabel!
    
    @IBOutlet weak var p4count: UILabel!
    
    @IBOutlet weak var loser: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        p1count.text = "20"
        p2count.text = "20"
        p3count.text = "20"
        p4count.text = "20"

    }


    @IBAction func p1AddSub5(_ sender: UIButton) {
        var newTotal = Int(p1count.text!)!
        if (sender.tag == 0) {
            newTotal -= 5
        } else if (sender.tag == 1) {
            newTotal += 5
        }
        p1count.text = String(newTotal)
        if (newTotal <= 0) {
            loser.text = "Player 1 loses!"
        }
    }
    
    @IBAction func p1AddSubUserInput(_ sender: UITextField) {
        if Int(sender.text!) != nil {
            let newTotal = Int(p1count.text!)! + Int(sender.text!)!
            p1count.text = String(newTotal)
            if (newTotal <= 0) {
                loser.text = "Player 1 loses!"
            }
        } else {
            print("Input can only be an integer")
        }
        
    }
    
    
    @IBAction func p2AddSub5(_ sender: UIButton) {
        var newTotal = Int(p2count.text!)!
        if (sender.tag == 0) {
            newTotal -= 5
        } else if (sender.tag == 1) {
            newTotal += 5
        }
        p2count.text = String(newTotal)
        if (newTotal <= 0) {
            loser.text = "Player 2 loses!"
        } 
    }
    @IBAction func p2AddSubUserInput(_ sender: UITextField) {
        if Int(sender.text!) != nil {
            let newTotal = Int(p2count.text!)! + Int(sender.text!)!
            p2count.text = String(newTotal)
            if (newTotal <= 0) {
                loser.text = "Player 2 loses!"
            }
        } else {
            print("Input can only be an integer")
        }
    }
    
    @IBAction func p3AddSub5(_ sender: UIButton) {
        var newTotal = Int(p3count.text!)!
        if (sender.tag == 0) {
            newTotal -= 5
        } else if (sender.tag == 1) {
            newTotal += 5
        }
        p3count.text = String(newTotal)
        if (newTotal <= 0) {
            loser.text = "Player 3 loses!"
        }
    }
    
    @IBAction func p3AddSubUserInput(_ sender: UITextField) {
        if Int(sender.text!) != nil {
            let newTotal = Int(p3count.text!)! + Int(sender.text!)!
            p3count.text = String(newTotal)
            if (newTotal <= 0) {
                loser.text = "Player 3 loses!"
            }
        } else {
            print("Input can only be an integer")
        }
        
    }
    
    @IBAction func p4AddSub5(_ sender: UIButton) {
        var newTotal = Int(p4count.text!)!
        if (sender.tag == 0) {
            newTotal -= 5
        } else if (sender.tag == 1) {
            newTotal += 5
        }
        p4count.text = String(newTotal)
        if (newTotal <= 0) {
            loser.text = "Player 4 loses!"
        }
    }
    
    @IBAction func p4AddSubUserInput(_ sender: UITextField) {
        if Int(sender.text!) != nil {
            let newTotal = Int(p4count.text!)! + Int(sender.text!)!
            p4count.text = String(newTotal)
            if (newTotal <= 0) {
                loser.text = "Player 4 loses!"
            }
        } else {
            print("Input can only be an integer")
        }
    }
}

