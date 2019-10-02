// My solution, seems like Indish code
func howManyPizzas(_ n: Int) -> String {
    let prop = pow(Double(n) / 8.0, 2)
    let pizzas = n < 8 ? 0 : Int(prop)
    var slices = 0
    if n < 8 {
        slices = Int(prop * 10)
    } else {
        let propslice = prop - Double(Int(prop))
        if propslice < 0.1 && propslice > 0 {
            slices = 1
        } else if propslice > 0.5 {
            slices = Int(propslice * 10) - 1
        } else {
            slices = Int(propslice * 10)
        }
    }
    return "pizzas: \(pizzas), slices: \(slices)"
}

// Best
func howManyPizzas(_ n: Int) -> String {
    return "pizzas: \(n*n/64), slices: \(Int(round(Float(n*n%64)/8)))"
}
