//
//  main.swift
//  RSA decryption calculation
//
//  Created by Huey Bai on 12/3/21.
//

import Foundation

//RSA Encryp
//let m:BInt = 500
//let n:BInt = BInt(113 * 89)
//let e:BInt = 29
//print(BIntMath.mod_exp(m,e,n))

//RSA Decryp
//let c:BInt = 3348
//let n:BInt = BInt(113 * 89)
//let d:BInt = 7477
//print(BIntMath.mod_exp(c,d,n))

//ElGamal Encryp
//let p:BInt = 7253
//let g:BInt = 217
//let x:BInt = 1683
//let r:BInt = 4160
//let m:BInt = 17
//let y = BIntMath.mod_exp(g,x,p)
//print(elGamalEncryp(p: p,g: g,y: y,r: r,m: m))

//ElGamal Decryp
//let p:BInt = 7253
//let x:BInt = 1683
//let c1:BInt = 4619
//let c2:BInt = 2149
//print(elGamalDecryp(p:p,x:x,c1:c1,c2:c2))

//Paillier Encryp
//let p:BInt = 11
//let q:BInt = 13
//let g:BInt = 144
//let m:BInt = 34
//let r:BInt = 23
//print(paillierEncryp(p: p,q: q,g: g,m: m,r: r))

//Paillier Decryp
//let p:BInt = 11
//let q:BInt = 13
//let n:BInt = p*q
//let g:BInt = 144
//let c:BInt = 52832
//var lambda:BInt = 12
//var mu:BInt = 23
//(lambda,mu) = PaillierGeneratPrivateKey(p: p,q: q,g: g)
//print(paillierDecryp(n:n,mu: mu,lambda: lambda,c: c))


func elGamalEncryp(p:BInt, g:BInt, y:BInt, r:BInt, m:BInt) -> (BInt,BInt){
    let k = BIntMath.mod_exp(y,r,p)
    let c1 = BIntMath.mod_exp(g,r,p)
    let c2 = (m*k)%p
    return (c1,c2)
}

func elGamalDecryp(p:BInt, x:BInt, c1:BInt, c2:BInt) -> BInt{
    let k = BIntMath.mod_exp(c1,x,p)
    let k2 = BIntMath.mod_reversa(k,p)
    return (k2*c2)%p
}

func paillierEncryp(n:BInt, g:BInt, m:BInt, r:BInt) -> BInt {
    return (pow(g, m)*pow(r, n)) % (n*n)
}

func paillierDecryp(n:BInt, mu:BInt, lambda:BInt, c:BInt) -> BInt {
    return ((((BIntMath.mod_exp(c, lambda, n*n))-1)/n) * mu) % n
}

func PaillierGeneratPrivateKey(p:BInt, q:BInt, g:BInt) -> (BInt,BInt){
    let lambda:BInt = BIntMath.lcm(p-1, q-1)
    let n = p * q
    let k = (BIntMath.mod_exp(g, lambda, n*n)-1)/n
    let mu = BIntMath.mod_reversa(k, n)
    return (lambda,mu)
}
