//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Midas on 07/02/20.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic{
    
    var number: Double?
    
    mutating func setNumber(_ number: Double){
        self.number = number
    }
    
    func calculation(symbol: String) -> Double? {
        if let n = number{
            if symbol == "+/-"{
                return n * -1
            } else if symbol == "AC"{
                return 0
            } else if symbol == "%"{
                return n / 100
            }
            
        }
        return nil
    }
    
    
    
}
