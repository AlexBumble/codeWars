//
//  Sum_3_5.swift
//  
//
//  Created by Алексей Бузов on 06/08/2019.
//

import Foundation


//MARK: Sum of all the multiples of 3 or 5

//Your task is to write function findSum.
//Upto and including n, this function will return the sum of all multiples of 3 and 5.
//
//For example:
//findSum(5) should return 8 (3 + 5)
//findSum(10) should return 33 (3 + 5 + 6 + 9 + 10)


func findSum(_ n: Int) -> Int {
    var res = 0
    for numbers in 1...n {
        guard numbers % 3 == 0 || numbers % 5 == 0 {
            res += numbers
        }
    }
    return res
}

findSum(5) // 8
findSum(10) // 33
findSum(100) // 2418
findSum(1000) // 234168
