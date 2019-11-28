import Foundation

func getLines(_ num:Int?) -> String {
  guard var num = num, num > 0 else {
    return "-1"
  }
  var buf = "11"
  var res = "1"
  while num != 1{
    res += ", \(buf)"
    buf = makeSequence(from: buf.map{$0})
    num -= 1
  }
  return res
}

func makeSequence(from str: [Character]) -> String {
  var res = ""
  var i = 0
  while i < str.count {
    var c = 1
    while i + 1 < str.count && str[i] == str[i + 1] {
      i += 1
      c += 1
    }
    res.append("\(c)")
    res.append(str[i])
    i += 1
  }
  return res
}
