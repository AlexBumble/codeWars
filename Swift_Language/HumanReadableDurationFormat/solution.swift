func formatDuration(_ seconds: Int) -> String {
  let spliter = [seconds / 31536000, (seconds % 31536000) / 86400,
                 (seconds % 86400) / 3600, (seconds % 3600) / 60,
                 (seconds % 3600) % 60]
  let strType = [("years", "year"), ("days", "day"),
                 ("hours", "hour"), ("minutes", "minute"),
                 ("seconds", "second")]
  var splitSeconds = [String]()
  
  for (i, value) in spliter.enumerated() {
    if value != 0 {
      splitSeconds.append(value > 1 ? "\(value) \(strType[i].0)" : "\(value) \(strType[i].1)")
    }
  }
  
  if splitSeconds.count == 0  {
    return "now"
  } else if splitSeconds.count == 1 {
    return splitSeconds[0]
  } else {
    return splitSeconds.dropLast().joined(separator: ", ") + " and " + splitSeconds.last!
  }
}
