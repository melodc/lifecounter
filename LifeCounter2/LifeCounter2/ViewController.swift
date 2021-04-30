//
//  ViewController.swift
//  LifeCounter2
//
//  Created by Melody Chou on 4/27/21.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    @IBOutlet weak var contentView: UIStackView!
    var count : Int = 5
    
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
    
    @IBAction func addPlayer(_ sender: UIButton) {
        if (count <= 8) {
            addPlayerFunction(count: count)
            count += 1
        } else {
            NSLog("Max number of players hit!")
        }
    }
    
    func addPlayerFunction(count : Int) {
        let name = "Player " + String(count)
        let lives = 20

        let personPanel = PlayerView()
        personPanel.data = (name, lives)
        contentView.addArrangedSubview(personPanel)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addPlayerFunction(count: 1)
        addPlayerFunction(count: 2)
        addPlayerFunction(count: 3)
        addPlayerFunction(count: 4)

    }
}


struct ViewController_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
