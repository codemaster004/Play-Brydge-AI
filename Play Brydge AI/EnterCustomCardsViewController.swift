//
//  EnterCustomCardsViewController.swift
//  Play Brydge AI
//
//  Created by Filip on 26/09/2019.
//  Copyright © 2019 Filip. All rights reserved.
//

import UIKit

class EnterCustomCardsViewController: UIViewController {
    @IBOutlet weak var escView: UIView!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        escView.layer.cornerRadius = 20
    }
    
    @IBAction func escButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cardsBottons(_ sender: UIButton) {
        
    }
    
    

}
