func removNb(_ n: Int) -> [(Int,Int)] {
  let sum = (n * (n + 1)) / 2
  var res = [(Int, Int)]()
  for b in (0...n).reversed() {
    let a = (sum - b) / (b + 1)
    if a < n {
      res.append((a, b))
    }
  }
  return res.filter{ $0.0 * $0.1 == sum - ($0.0 + $0.1) }
}
