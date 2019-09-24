func tour(_ friends: [String], _ friendsTowns: [String:String], _ dist: [String:Double]) -> Int {
  var res: Double = 0
  
  for i in 0..<friends.count {
    if let ft1 = friendsTowns[friends[i]], let d1 = dist[ft1] {
      if i == 0 {
        res += d1
      }
      if i + 1 < friends.count, let ft2 = friendsTowns[friends[i + 1]], let d2 = dist[ft2] {
        res += sqrt(pow(d2, 2) - pow(d1, 2))
      } else {
        res += d1
      }
    }
  }
  return Int(res)
}
