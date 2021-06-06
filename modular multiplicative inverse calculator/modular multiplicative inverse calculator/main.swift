//
//  main.swift
//  modular multiplicative inverse calculator
//
//  Created by Huey Bai on 12/3/21.
//

import Foundation

var e:BInt = 23
var n:BInt = BInt("53640733922314356082418985865549259857121319930286415490278447080788497853912")!

print("d=" + calculateMod(e: e,mod : n))

func calculateMod(e:BInt,mod:BInt) -> String {
    var i:BInt = 1
    while i < mod  {
        if (((e % mod) * (i % mod)) % mod  == 1) {
            return String(i)
        }
        i += 1
    }
    return ""
}
