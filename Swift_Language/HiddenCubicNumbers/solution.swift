func isSumOfCubes(_ s: String) -> String {
  let intArr = for3NumbersSeparetByComma(s)
  var resStrin = ""
  var sum = 0
  for (i, n) in intArr.0.enumerated() {
    guard let n = n else { continue }
    var buff = 0.0
    for c in intArr.1[i] {
      guard let c = c else { continue }
      buff += pow(Double(c), 3)
    }
    if buff == Double(n) {
      sum += n
      resStrin += "\(n) "
    }
  }
  return resStrin == "" ? "Unlucky" : "\(resStrin)\(sum) Lucky"
}

func for3NumbersSeparetByComma(_ s: String) -> ([Int?], [[Int?]]) {
  let numbers = s
    .components(separatedBy: CharacterSet.decimalDigits.inverted)
    .filter{ $0 != "" }
  let splitNum = numbers.map { spliter($0)}.flatMap{$0}
  let digitsInNumber = splitNum.map { $0.map { String($0)} }
  return (splitNum.map { Int($0) }, digitsInNumber.map { $0.map{ Int($0)}})
}

func spliter (_ str: String) -> [String] {
 if str.count > 3 {
   let t = str.map { $0 }
   return [String(t[0...2])] + spliter(String(t[3..<t.count]))
 }
 return [str]
}
