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
  var new = [String]()
  for n in numbers {
    var buf = "", counter = 0
    if n.count > 3 {
      for char in n {
        buf += [char]
        if buf.count % 3 == 0 { new.append(buf); buf = ""; counter += 3 }
        if buf.count == n.count - counter { new.append(buf)}
      }
    } else { new.append(n) }
  }
  let digitsInNumber = new.map { $0.map { String($0)} }
  return (new.map { Int($0) }, digitsInNumber.map { $0.map{ Int($0)}})
}
