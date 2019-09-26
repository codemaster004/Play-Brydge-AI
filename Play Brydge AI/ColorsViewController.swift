//
//  ViewController.swift
//  Play Brydge AI
//
//  Created by Filip on 25/09/2019.
//  Copyright © 2019 Filip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var InfoLabel: UILabel!
    @IBOutlet weak var HeartsCardsLabel: UILabel!
    @IBOutlet weak var SpadesCardsLabel: UILabel!
    @IBOutlet weak var DiamondsCardsLabel: UILabel!
    @IBOutlet weak var ClubsCardsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
        case "enterYourClubs":
            EnterCardsVC.suitData = "Clubs"
        default:
            print("Hiuston we have a problem!")
        }
    }
    
    
}

/*
 if segue.identifier == "enterYourClubs" {
 let EnterCardsVC = segue.destination as! EnterCardsViewController
 EnterCardsVC.data = "Clubs"
 }
 */
