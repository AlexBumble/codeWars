import Foundation

func toLeetSpeak(_ s : String) -> String {
    
    let dialect = ["A" : "@",
                   "B" : "8",
                   "C" : "(",
                   "D" : "D",
                   "E" : "3",
                   "F" : "F",
                   "G" : "6",
                   "H" : "#",
                   "I" : "!",
                   "J" : "J",
                   "K" : "K",
                   "L" : "1",
                   "M" : "M",
                   "N" : "N",
                   "O" : "0",
                   "P" : "P",
                   "Q" : "Q",
                   "R" : "R",
                   "S" : "$",
                   "T" : "7",
                   "U" : "U",
                   "V" : "V",
                   "W" : "W",
                   "X" : "X",
                   "Y" : "Y",
                   "Z" : "2"]
    var res = ""

    for character in s.characters  {
        if isLowercase(string:  "\(character)") {
            let ctr =  "\(character)"
            res += ctr
        }
        else {
            let str = "\(character)"
            res += dialect[str] ?? "0"
        }
    }
   return res
}

func isLowercase(string: String) -> Bool {
   let set = CharacterSet.uppercaseLetters
    if set.contains(UnicodeScalar(string) ?? "0") {
        return false
    } else {
        return true
    }
}
