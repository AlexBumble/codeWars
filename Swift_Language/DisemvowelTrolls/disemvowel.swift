//
//  disemvowel.swift
//  
//
//  Created by Алексей Бузов on 28/07/2019.
//

import Foundation


func disemvowel(_ s: String) -> String {
    
    var resalt = ""
    var str = ""
    let vowels = ["A","a","E","e","i","I","o","O","u","U"]
    
    for index in s {
        if !(vowels.contains("\(index)")) {
            str.insert(index, at: str.startIndex)
        }
    }
    for character in str {
        resalt = "\(character)" + resalt
    }
    return resalt
}
