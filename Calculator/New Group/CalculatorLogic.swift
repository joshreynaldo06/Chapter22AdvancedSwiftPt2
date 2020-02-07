//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Midas on 07/02/20.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic{
    
    private var number: Double?
    
    private var intermediateCalculation : (number1: Double,  calcMethod : String)?
    
    mutating func setNumber(_ number: Double){
        self.number = number
    }
    
    mutating func calculation(symbol: String) -> Double? {
        if let n = number{
            if symbol == "+/-"{
                return n * -1
            } else if symbol == "AC"{
                return 0
            } else if symbol == "%"{
                return n / 100
            } else if symbol == "=" {
                performTwoNumberCalculation(n2: n)
            } else {
                intermediateCalculation = (number1: n, calcMethod: symbol)
            }
            
        }
        return nil
    }
    
    private func performTwoNumberCalculation(n2: Double) -> Double?{
        
        if let n1 = intermediateCalculation?.number1, let operation = intermediateCalculation?.calcMethod {
            
            if operation == "+"{
                return n1+n2
            } else if operation == "-"{
                return n1-n2
            } else if operation == "*"{
                return n1*n2
            } else if operation == "/"{
                return n1/n2
            }
        }
        
        return nil
    }
    
}
