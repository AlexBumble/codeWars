func rgb(_ r: Int, _ g: Int, _ b: Int) -> String {
    return "\(hex(r))\(hex(g))\(hex(b))"
}

func hex(_ decimal: Int) -> String {
    let positivValue = decimal > 0 ? decimal : 0
    let res = String(positivValue <= 255 ? positivValue : 255, radix: 16).uppercased()
    return res.count > 1 ? res : "0\(res)"
}
