//
//  main.swift
//  RSA decryption calculation
//
//  Created by Huey Bai on 12/3/21.
//

import Foundation

var c:Int64 = 700100670
var n:Int64 = 4599788129
var d:UInt64 = 3433013179


print(modularExponentiation(base: c,exponent: d,modulo: n))

func modularExponentiation(base:Int64, exponent:UInt64, modulo:Int64) -> Int64 {
    var tempBase:Int64 = base
    var tempExponent:UInt64 = exponent
    var biggerNum:[Int64] = Array(repeating: 1, count: 10)
    let tempModulo:Int64 = modulo
    if (tempBase == 0){
        return 0
    }
    while (tempExponent > 0){
        var index:Int = 0
        if biggerNum[0] >= Int64.max/2 {
            index += 1
            if biggerNum[0] % 2 == 0 {
                biggerNum[index] = biggerNum[0]/2
                biggerNum[0] = biggerNum[0]/2
            }else{
                biggerNum[index] = biggerNum[0]-1/2
                biggerNum[0] = biggerNum[0]+1/2
            }
        }
        if ((tempExponent & 1) != 0){
            if index > 0 {
                let i = 0
                while i < biggerNum.count {
                    biggerNum[i] = (biggerNum[i]*tempBase) % tempModulo
                }
            }else{
                biggerNum[0] = (biggerNum[0]*tempBase) % tempModulo
            }
        }
        tempExponent = tempExponent>>1;
        tempBase = (tempBase*tempBase) % tempModulo;
        }
    var reslut:Int64 = 1
    for j in biggerNum {
        reslut = j % tempModulo * j
    }
    
    reslut = reslut % tempModulo
    return reslut
    
}
