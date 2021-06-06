//
//  main.swift
//  Calculate Mod
//
//  Created by Huey Bai on 19/3/21.
//

import Foundation

//var base:BInt = 22222
//var power:BInt = 55555
//var dividend:BInt = 77777
//let startTime = CFAbsoluteTimeGetCurrent()
//var result:BInt = BIntMath.mod_exp(base,power,dividend)
//let endTime = CFAbsoluteTimeGetCurrent()
//print(endTime-startTime, "s")
//print(result)
var q:BInt = BInt("124566090654136987961913344431645866767")!
var p:BInt = BInt("430620674058481288123238045045697123658933")!
var n:BInt = p*q
print(n)
