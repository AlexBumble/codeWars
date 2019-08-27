func isTriangleNumber(_ number: Int) -> Bool {
    var i = 1
    var v = number
    while v > 0 {
        v = v - i
        i += 1
        if v == 0{
            return true
        }
    }
    return false
}
