//
//  FareCalc.swift
//  MTAFareCalc
//
//  Created by Brian Anthony M. Balayon on 6/28/20.
//  Copyright © 2020 Brian Anthony M. Balayon. All rights reserved.
//

import Foundation

class FareCalc {
    
    static func calcFare(bal: Double, rides: Int) -> Double {
        let ridesCost = Double(rides) * Constants.ONE_FARE
        var netCost = ridesCost - bal
        if (netCost > Constants.BONUS_THRESHOLD) {
            netCost /= 1.05
        }
        return netCost
    }
    
}
