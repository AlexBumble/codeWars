func bouncingBall(_ h: Double, _ bounce: Double, _ window: Double) -> Int {
    
    var i = 1
    var j = h * bounce
    
    if h <= 0 {
        return -1
    }
    if bounce >= 1 || bounce <= 0 {
        return -1
    }
    if window >= h {
        return -1
    }
    while j > window {
        i += 2
        j = j * bounce
    }
    return i
}
