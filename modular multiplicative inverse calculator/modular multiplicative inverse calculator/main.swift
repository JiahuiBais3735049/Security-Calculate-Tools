//
//  main.swift
//  modular multiplicative inverse calculator
//
//  Created by Huey Bai on 12/3/21.
//

import Foundation

var e:Int64 = 5
var n:Int64 = 55884672;

print("d=" + calculateMod(e: e,mod : n))

func calculateMod(e:Int64,mod:Int64) -> String {
    var i:Int64 = 1
    while i < mod  {
        if (((e % mod) * (i % mod)) % mod  == 1) {
            return String(i)
        }
        i += 1
    }
    return ""
}
