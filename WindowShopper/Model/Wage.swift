//
//  Wage.swift
//  WindowShopper
//
//  Created by Andrii Kost on 2/15/18.
//  Copyright © 2018 Andrii Kost. All rights reserved.
//

import Foundation

class Wage {
    
    //function for calculating the amount of hours needed for purchasing item
    class func getHours(forWage wage:Double, andPrice price:Double) -> Int {
        return Int(ceil(price / wage))
    }
}
