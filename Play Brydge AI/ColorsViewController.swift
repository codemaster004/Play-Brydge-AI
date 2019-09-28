//
//  ViewController.swift
//  Play Brydge AI
//
//  Created by Filip on 25/09/2019.
//  Copyright © 2019 Filip. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanReceive {
    
    @IBOutlet weak var InfoLabel: UILabel!
    @IBOutlet weak var HeartsCardsLabel: UILabel!
    @IBOutlet weak var SpadesCardsLabel: UILabel!
    @IBOutlet weak var DiamondsCardsLabel: UILabel!
    @IBOutlet weak var ClubsCardsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func SuitButtons(_ sender: UIButton) {
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let EnterCardsVC = segue.destination as! EnterCardsViewController
        switch segue.identifier {
        case "enterYourHearts":
            EnterCardsVC.suitData = "Hearts"
        case "enterYourSpades":
            EnterCardsVC.suitData = "Spades"
        case "enterYourDiamonds":
            EnterCardsVC.suitData = "Diamonds"
        default:
            EnterCardsVC.suitData = "Clubs"
        }
        EnterCardsVC.delegate = self
    }
    
    func fillSuitLabel(color: String) {
        var text = ""
        for cardValue in cardsDB[color]! {
                text += "\(cardValue) "
        }
        switch color {
        case "Hearts":
            HeartsCardsLabel.text = text
        case "Spades":
            SpadesCardsLabel.text = text
        case "Diamonds":
            DiamondsCardsLabel.text = text
        default:
            ClubsCardsLabel.text = text
        }
    }
    
    func dataReceive(data: String) {
        switch myCards.count {
        case 0:
            InfoLabel.text = "Nie wpisałeś jeszcze żednej karty!"
        case 13:
            InfoLabel.text = "Gotowe!"
        default:
            InfoLabel.text = "To dopiero \(myCards.count) zostało jeszcze \(13 - myCards.count)"
        }
        fillSuitLabel(color: data)
    }
    
}
