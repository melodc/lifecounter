//
//  PlayerView.swift
//  LifeCounter2
//
//  Created by Melody Chou on 4/27/21.
//

import Foundation
import UIKit

class PlayerView: UIView {
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    @IBOutlet var playerLabel: UILabel!
    
    @IBOutlet var scoreLabel: UILabel!
    
    @IBOutlet var subtractFiveButton: UIButton!
    
    var data : (String, Int) = ("", -1) {
        didSet {
            // Update the label with modified data
            playerLabel.text = "\(data.0)"
            scoreLabel.text = "Lives: \(data.1)"
        }
    }

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let viewFromXib = Bundle.main.loadNibNamed("PlayerView", owner: self, options: nil)![0] as! UIView
        viewFromXib.frame = self.bounds
        addSubview(viewFromXib)
    
        playerLabel = (viewFromXib.subviews[0].subviews[0].subviews[0] as! UILabel)
        scoreLabel = (viewFromXib.subviews[0].subviews[0].subviews[1] as! UILabel)
        subtractFiveButton = (viewFromXib.subviews[0].subviews[1].subviews[0].subviews[0] as! UIButton)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
//        playerLabel.text = "Player \(data.0)"
//        scoreLabel.text = "Lives: \(data.1)"
    }
    
    
    @IBAction func subtractFive(_ sender: UIButton) {
        // Modify our internal data
        data = (data.0, data.1 - 5)
        NSLog("subtracted 5")
        
        // Update the label with modified data
        scoreLabel.text = "Lives: \(data.1)"
    }
    
    
    @IBAction func addFive(_ sender: UIButton) {
        // Modify our internal data
        data = (data.0, data.1 + 5)
        
        // Update the label with modified data
        scoreLabel.text = "Lives: \(data.1)"
    }
    
    @IBAction func addSubtractUserInput(_ sender: UITextField) {
        data = (data.0, data.1 + Int(sender.text!)!)
        
        // Update the label with modified data
        scoreLabel.text = "Lives: \(data.1)"
    }
}
