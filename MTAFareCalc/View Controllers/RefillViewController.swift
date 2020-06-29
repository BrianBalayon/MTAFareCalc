//
//  RefillViewController.swift
//  MTAFareCalc
//
//  Created by Brian Anthony M. Balayon on 6/28/20.
//  Copyright © 2020 Brian Anthony M. Balayon. All rights reserved.
//

import UIKit

class RefillViewController: UIViewController {

    @IBOutlet weak var _ridesField: UITextField!
    @IBOutlet weak var _balanceField: UITextField!
    @IBOutlet weak var _titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcFare(_ sender: UIButton) {
        guard _ridesField.text! != "" else {
            return
        }
        guard _balanceField.text != "" else {
            return
        }
        let left = Double(_balanceField.text!) ?? 0.00
        let amt = Int(_ridesField.text!) ?? 2
        let cost = FareCalc.calcFare(bal: left, rides: amt)
        var toAddStr = "\n \n You have more then enough!"
        if (cost > 0.00) {
            toAddStr = "\n \n $" + String(format: "%.2f", cost) + "\n for a total of" + String(amt) + " rides."
        }
        _titleLabel.text = "Refill your MetroCard" + toAddStr
    }

}
