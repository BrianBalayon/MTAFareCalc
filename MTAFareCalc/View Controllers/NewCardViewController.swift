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
    
    @IBAction func _calcBtn(_ sender: Any) {
        print(String(format: "%.2f", FareCalc.calcFare(bal: 0, rides: 4)))
    }

}
