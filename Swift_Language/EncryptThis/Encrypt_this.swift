//
//  Encrypt_this.swift
//  
//
//  Created by Алексей Бузов on 30/07/2019.
//

import Foundation

func encryptThis(text:String) -> String {
    
    var res = ""
    let wordsArray = text.split(separator: " ")
    
    for words in wordsArray {
        var i = 1
        var charArray = [Character](words)
        res += "\(charArray[0].asciiValue ?? 0)"
        if charArray.count > 2 {
            charArray.swapAt(1, charArray.count - 1)
            while i < charArray.count {
                res += "\(charArray[i])"
                i += 1
            }
        } else if charArray.count == 2 {
            res += "\(charArray[1])"
        }
        res += " "
    }
    res.split(separator: " ").joined(separator: " ")
    return res
}
