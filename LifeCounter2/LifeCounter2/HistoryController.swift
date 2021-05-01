//
//  HistoryController.swift
//  LifeCounter2
//
//  Created by Melody Chou on 4/30/21.
//

import UIKit

class HistoryController: UIViewController {
    
    @IBOutlet weak var historyPanel: UIStackView!
    
   override func viewDidLoad() {
       super.viewDidLoad()
        for (index, element) in history.enumerated() {
            if index >= historyPanel.arrangedSubviews.count - 1 {
                historyPanel.addArrangedSubview(UILabel())
            }
            (historyPanel.arrangedSubviews[index] as? UILabel)?.text = element
            historyPanel.arrangedSubviews[index].isHidden = false
        }
   }
}
