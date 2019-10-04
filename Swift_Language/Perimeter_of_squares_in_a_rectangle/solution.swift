func perimeter(_ n: UInt64) -> UInt64 {
  var res: [UInt64] = [0, 1]
  for i in 0...n + 2 {
    if i > 2 {
      res.append(res.last! + res[res.count - 2])
    }
  }
  return res.reduce(0, +) * 4
}


