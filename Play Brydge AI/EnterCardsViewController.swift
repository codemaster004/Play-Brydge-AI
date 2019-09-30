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
        
        checkIfExistingInDB()
    }
    
    func checkIfExistingInDB() {
        card1Button.backgroundColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.80)
        card2Button.backgroundColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.80)
        card3Button.backgroundColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.80)
        card4Button.backgroundColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.80)
        card5Button.backgroundColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.80)
        card6Button.backgroundColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.80)
        card7Button.backgroundColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.80)
        card8Button.backgroundColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.80)
        card9Button.backgroundColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.80)
        card10Button.backgroundColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.80)
        card11Button.backgroundColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.80)
        card12Button.backgroundColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.80)
        card13Button.backgroundColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 0.80)
        for card in cardsDB[suitData]! {
            switch card {
            case "2":
                updateCardUI(button: card1Button, existInDB: cardsDB[suitData]!.contains("2"))
            case "3":
                updateCardUI(button: card2Button, existInDB: cardsDB[suitData]!.contains("3"))
            case "4":
                updateCardUI(button: card3Button, existInDB: cardsDB[suitData]!.contains("4"))
            case "5":
                updateCardUI(button: card4Button, existInDB: cardsDB[suitData]!.contains("5"))
            case "6":
                updateCardUI(button: card5Button, existInDB: cardsDB[suitData]!.contains("6"))
            case "7":
                updateCardUI(button: card6Button, existInDB: cardsDB[suitData]!.contains("7"))
            case "8":
                updateCardUI(button: card7Button, existInDB: cardsDB[suitData]!.contains("8"))
            case "9":
                updateCardUI(button: card8Button, existInDB: cardsDB[suitData]!.contains("9"))
            case "10":
                updateCardUI(button: card9Button, existInDB: cardsDB[suitData]!.contains("10"))
            case "J":
                updateCardUI(button: card10Button, existInDB: cardsDB[suitData]!.contains("J"))
            case "Q":
                updateCardUI(button: card11Button, existInDB: cardsDB[suitData]!.contains("Q"))
            case "K":
                updateCardUI(button: card12Button, existInDB: cardsDB[suitData]!.contains("K"))
            default:
                updateCardUI(button: card13Button, existInDB: cardsDB[suitData]!.contains("A"))
            }
        }
    }
    
    func updateCardUI(button : UIButton, existInDB : Bool) {
        if existInDB {
            button.backgroundColor = UIColor.white
        }
    }
    
    @IBAction func escButton(_ sender: Any) {
        myCards = cardsDB["Hearts"]! + cardsDB["Spades"]! + cardsDB["Diamonds"]! + cardsDB["Clubs"]!
        delegate?.dataReceive(data: suitData)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cardsBotton(_ sender: UIButton) {
        if cardsDB[suitData]!.contains(cardsValue[sender.tag - 1]) {
            var i = 0
            for card in cardsDB[suitData]! {
                if card == cardsValue[sender.tag - 1] {
                    cardsDB[suitData]!.remove(at: i)
                }
                i += 1
            }
        } else {
            cardsDB[suitData]!.append(cardsValue[sender.tag - 1])
        }
        checkIfExistingInDB()
    }
    
    

}
