//
//  Calculations.swift
//  CalculatorPI
//
//  Created by student on 10/10/2023.
//

import Foundation

struct Calculations
{

    func add(value1:Int, value2:Int) -> Double{
        return Double(value1 + value2)
    }
    func subtract(value1:Int, value2:Int) -> Double{
        return Double(value1 - value2)
    }
    func divide(value1:Int, value2:Int) -> Double?{
        if(value2 == 0){
            return nil
        }
         return Double(value1/value2);
    }
    func multiply(value1:Int, value2:Int) -> Double{
        return Double(value1 * value2)
    }
    func sinus(value:Double) -> Double{
        return sin(value)
    }
}

