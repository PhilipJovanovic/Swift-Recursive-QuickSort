//
//  main.swift
//  QuickSort
//
//  Created by Philip Jovanovic on 31.10.17.
//  Copyright © 2017 Philip Jovanovic. All rights reserved.
//

import Foundation

func qs(_ l: [Int]) -> [Int]{
    var test = l
    let leng = test.count-1
    if test.count > 2{
        let r = test.last!
        var ar: [Int] = [], ar2: [Int] = []
        var a: Int = -1, b: Int = -1, zw: Int = -1
        for i in 0...leng{
            if test[i] > r && a == -1{
                a = i
            }
            if test[leng-i] < r && b == -1{
                b = leng-i
            }
        }
        if a == -1{
            for i in 0...leng-1{
                ar.append(test[i])
            }
            return qs(ar) + [test[leng]]
        }
        if b > a{
            zw = l[a]
            test[a] = test[b]
            test[b] = zw
            return qs(test)
        }else{
            zw = test[a]
            test[a] = r
            test[leng] = zw
            for i in 0...a-1{
                ar.append(test[i])
            }
            for i in a+1...leng{
                ar2.append(test[i])
            }
            return qs(ar) + [test[a]] + qs(ar2)
        }
    }else if test.count == 2{
        if(test[0]>test[1]){
            let zw = test[1]
            test[1] = test[0]
            test[0] = zw
            return test
        }else{
            return test
        }
    }else{
        return test
    }
}
var start = [1,7,2,8,1337,420,5,3,4,11,26,27]
let fin = qs(start)
print("Ende",fin)






