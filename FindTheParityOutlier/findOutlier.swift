//
//  findOutlier.swift
//  
//
//  Created by Алексей Бузов on 28/07/2019.
//

import Foundation


func findOutlier(_ array: [Int]) -> Int {
    
    var resOdd = 0
    var resEven = 0
    var counterOfEven = 0
    
    array.map {
        if $0 % 2 == 0 {
            counterOfEven += 1
            resEven = $0
        } else {
            resOdd = $0
        }
    }
    let out = counterOfEven > 1 ? resOdd : resEven
    return out
}


findOutlier([1, 33, 10053359313, 2, 1, 1, 1, 1, 1, 1, -3, 9])
findOutlier([8, 80, 14, 2, 20, 0, 21, 80])
