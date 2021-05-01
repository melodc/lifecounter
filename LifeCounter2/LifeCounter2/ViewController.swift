//
//  ViewController.swift
//  LifeCounter2
//
//  Created by Melody Chou on 4/27/21.
//

import UIKit

protocol ViewDelegate {
    func disableAddPlayer()
    func showLoser(player: String)
}
var history : [String] = []

class ViewController: UIViewController, ViewDelegate {
    @IBOutlet weak var contentView: UIStackView!

    @IBOutlet weak var addPlayers: UIButton!
    
    @IBOutlet weak var loser: UILabel!
    
    var count : Int = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addPlayerFunction(count: 1)
        addPlayerFunction(count: 2)
        addPlayerFunction(count: 3)
        addPlayerFunction(count: 4)
    }

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
        let name = String(count)
        let lives = 20

        let personPanel = PersonPanelView()
        personPanel.data = (name, lives)
        personPanel.tag = 100
        personPanel.delegate = self
        
        contentView.addArrangedSubview(personPanel)
        }

    func disableAddPlayer() {
        NSLog("Add player function disabled")
        addPlayers.isEnabled = false
        addPlayers.alpha = 0.5;
    }
    
    func showLoser(player: String) {
        loser.text = "Player \(player) LOSES!"
        history.append("Player \(player) LOSES!")
    }
    
    
    @IBAction func viewHistory(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let controller  = storyboard.instantiateViewController(withIdentifier: "HistoryScreen") as! HistoryController;
        self.present(controller, animated: true, completion: nil);
    }
    
}

