//
//  NewCardViewController.swift
//  MTAFareCalc
//
//  Created by Brian Anthony M. Balayon on 6/28/20.
//  Copyright © 2020 Brian Anthony M. Balayon. All rights reserved.
//

import UIKit

class NewCardViewController: UIViewController {

    @IBOutlet weak var _titleLabel: UILabel!
    @IBOutlet weak var _ridesField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcFare(_ sender: UIButton) {
        guard _ridesField.text! != "" else {
            return
        }
        let amt = Int(_ridesField.text!) ?? 2
        let cost = FareCalc.calcFare(bal: 0.00, rides: amt) + Constants.NEW_CARD_FEE
        _titleLabel.text = "Buy a New MetroCard"
            + "\n \n $" + String(format: "%.2f", cost) +
            "\n for " + String(amt) + " rides."
    }
}
