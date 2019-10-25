func dirReduc(_ arr: [String]) -> [String] {
  let dict = ["SOUTH": "NORTH", "NORTH": "SOUTH", "WEST": "EAST", "EAST": "WEST" ]
  var buff = arr
  for (i, v) in buff.enumerated() {
    if i + 1 < buff.count && dict[v] == buff[i + 1] {
      buff.remove(at: i + 1)
      buff.remove(at: i)
      return dirReduc(buff)
    }
  }
  return buff
}
