//
//  PersonPanel.swift
//  LifeCounter2
//
//  Created by Melody Chou on 4/30/21.
//

import UIKit

class PersonPanelView: UIView, UITextFieldDelegate {
    var data : (String, Int) = ("", -1) {
        didSet {
            // Update the label with modified data
            label.text = "Player: \(data.0)"
            scoreLabel.text = "Lives: \(data.1)"
        }
    }
    
    weak var label: UILabel!
    weak var scoreLabel: UILabel!
    weak var error: UILabel!
    
    @IBOutlet weak var input: UITextField!
    
    var delegate: ViewDelegate?
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initSubViews()
        self.input.delegate = self

    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //self.initSubViews() breaks for some reason
    }
   

    private func initSubViews() {
        // Instantiate the nib into existence
        let nib = UINib(nibName: "PersonPanel", bundle: nil)
        let nibInstance = nib.instantiate(withOwner: self, options:nil)
        
        // Get the view from the instantiated nib and add it into our own tree
        let nibView = (nibInstance.first) as! UIView
        addSubview(nibView)
        
        // Wire up the controls to this view
        label = (nibView.subviews[0].subviews[0].subviews[0] as! UILabel)
        label.text = "\(data.0)"
        
        scoreLabel = (nibView.subviews[0].subviews[0].subviews[1] as! UILabel)
        scoreLabel.text = "\(data.1)"
        
        error = (nibView.subviews[0].subviews[2] as! UILabel)
        error.text = ""
        
    }
    
    
    @IBAction func addSubtract5(_ sender: UIButton) {
        delegate?.disableAddPlayer()

        if (sender.tag == 0) {
            // Modify our internal data
            data = (data.0, data.1 - 5)
            history.append("Player \(data.0) lost 5 lives.")
        } else if (sender.tag == 1) {
            data = (data.0, data.1 + 5)
            history.append("Player \(data.0) got 5 more lives.")
        }
        
        // Update the label with modified data
        scoreLabel.text = "Lives: \(data.1)"
        if (data.1 <= 0) {
            delegate?.showLoser(player: data.0)
        }
    }
    
    
    @IBAction func addSubtractUserInput(_ sender: UITextField) {
        delegate?.disableAddPlayer()

        let allowedCharacters = CharacterSet(charactersIn:"0123456789-")
        let characterSet = CharacterSet(charactersIn: String(sender.text!))
        // Check numeric input
        if (allowedCharacters.isSuperset(of: characterSet)) {
            data = (data.0, data.1 + Int(sender.text!)!)
            error.text = ""
            history.append("Player \(data.0) lost \(data.1) live(s).")
        } else {
            error.text = "Input is not a valid number"
        }
        // Update the label with modified data
        scoreLabel.text = "Lives: \(data.1)"
        if (data.1 <= 0) {
            delegate?.showLoser(player: data.0)
        }
    }
    
    // Close numeric keypad on return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            self.input.endEditing(true)
            return false
    }
    

}

