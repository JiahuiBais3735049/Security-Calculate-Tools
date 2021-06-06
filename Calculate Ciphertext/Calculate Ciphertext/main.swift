//
//  main.swift
//  Calculate Ciphertext
//
//  Created by Huey Bai on 20/4/21.
//

import Foundation

var g:BDouble = 258.0
var m:Int = 1
var r:BDouble = 91.0
var n:Int = 19939
var a:BDouble = pow(g, m)
var b:BDouble = pow(r, n)

var result = mod((a*b), BDouble((n*n)))
print(result)



