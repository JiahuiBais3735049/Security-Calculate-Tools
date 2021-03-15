//
//  main.swift
//  Prime factor decomposition calculator
//
//  Created by Huey Bai on 12/3/21.
//

import Foundation

var num:Int = 4599788129
print(PrimeCalculator(number: num))

func PrimeCalculator(number:Int) -> String {
    var operand = number
    var i:Int = 2
    var result:String = String(operand)+"="
    let startTime = CFAbsoluteTimeGetCurrent()
    while (i <= operand) {
        // Determine whether it can be divisible
        if (operand % i == 0) {
            // Save the value into the result and add "*"
            result += String(i)
            result += "*"
            // Calculate the value of the next num
            operand = operand / i
            // Reset i to 2
            i = 2
        } else {
            // Not divisible, add 1
            i+=1
        }
    }
    let endTime = CFAbsoluteTimeGetCurrent()
    //Remove the "*" at the end of the string
    result.removeLast()
    print(endTime-startTime, "s")
    return result
}
