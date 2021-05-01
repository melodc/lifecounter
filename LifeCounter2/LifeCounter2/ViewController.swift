//
//  ViewController.swift
//  LifeCounter2
//
//  Created by Melody Chou on 4/27/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var contentView: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addPlayerFunction(count: 1)
        addPlayerFunction(count: 2)
        addPlayerFunction(count: 3)
        addPlayerFunction(count: 4)

    }

    var count : Int = 5


    @IBAction func addPlayer(_ sender: UIButton) {
        if (count <= 8) {
            addPlayerFunction(count: count)
            count += 1
        } else {
            NSLog("Max number of players hit!")
        }
    }


    @IBAction func subtractPlayer(_ sender: UIButton) {
        NSLog("Subtracting player")
        if (count >= 2) {
            if let viewWithTag = self.view.viewWithTag(100) {
                viewWithTag.removeFromSuperview()
            }else{
                NSLog("Error")
            }
            count -= 1
        } else {
            NSLog("Can't have lsss than 2 players!")
        }
    }


    func addPlayerFunction(count : Int) {
        let name = "Player " + String(count)
        let lives = 20

        let personPanel = PersonPanelView()
        personPanel.data = (name, lives)
        personPanel.tag = 100

        contentView.addArrangedSubview(personPanel)
        }

    
}

