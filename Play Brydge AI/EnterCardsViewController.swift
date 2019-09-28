//
//  EnterCustomCardsViewController.swift
//  Play Brydge AI
//
//  Created by Filip on 26/09/2019.
//  Copyright © 2019 Filip. All rights reserved.
//

import UIKit

protocol CanReceive {
    func dataReceive(data: String)
}

class EnterCardsViewController: UIViewController {
    @IBOutlet weak var escButton: UIView!
    @IBOutlet weak var suitLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBOutlet weak var card1Button: UIButton!
    @IBOutlet weak var card2Button: UIButton!
    @IBOutlet weak var card3Button: UIButton!
    @IBOutlet weak var card4Button: UIButton!
    @IBOutlet weak var card5Button: UIButton!
    @IBOutlet weak var card6Button: UIButton!
    @IBOutlet weak var card7Button: UIButton!
    @IBOutlet weak var card8Button: UIButton!
    @IBOutlet weak var card9Button: UIButton!
    @IBOutlet weak var card10Button: UIButton!
    @IBOutlet weak var card11Button: UIButton!
    @IBOutlet weak var card12Button: UIButton!
    @IBOutlet weak var card13Button: UIButton!
    
    var delegate : CanReceive?
    
    var suitData = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        escButton.layer.cornerRadius = 25
        suitLabel.text = suitsDB[suitData]!["view"]
        infoLabel.text = "Podaj \(suitsDB[suitData]!["pl"]!)"
    }
    
    @IBAction func escButton(_ sender: Any) {
        myCards = cardsDB["Hearts"]! + cardsDB["Spades"]! + cardsDB["Diamonds"]! + cardsDB["Clubs"]!
        delegate?.dataReceive(data: suitData)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cardsBotton(_ sender: UIButton) {
        if cardsDB[suitData]!.contains(cardsValue[sender.tag - 1]) {
            sender.backgroundColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.8)
            var i = 0
            for card in cardsDB[suitData]! {
                if card == cardsValue[sender.tag - 1] {
                    cardsDB[suitData]!.remove(at: i)
                }
                i += 1
            }
        } else {
            sender.backgroundColor = UIColor.white
            cardsDB[suitData]!.append(cardsValue[sender.tag - 1])
        }
        
    }
    
    

}
