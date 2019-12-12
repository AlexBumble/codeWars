func doubles(_ maxk: Int, _ maxn: Int) -> Double {
  var res: Double = 0
  for k in 1...maxk {
    for n in 1...maxn {
      res += 1 / (Double(k) * pow(Double(n + 1), Double(2 * k)))
    }
  }
  return res
}

