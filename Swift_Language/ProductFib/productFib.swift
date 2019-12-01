func productFib(_ prod : UInt64) -> (UInt64,UInt64,Bool) {
    var x: UInt64 = 1
    var y: UInt64 = 1
    
    while x * y < prod {
        let sum = x + y
        x = y
        y = sum
        if x * y == prod {
            return (x, y, true)
        }
    }
    return(x, y, false)
}


// with recursion
func productFib(_ prod : UInt64) -> (UInt64,UInt64,Bool) {
  return sequence(prod: prod)
}

func sequence(prod: UInt64, x: UInt64 = 0, y: UInt64 = 1) -> (UInt64,UInt64,Bool) {
  guard !(x * y == prod) else { return (x, y, true) }
  guard !(x * y > prod) else { return (x, y, false) }
  return sequence(prod: prod, x: y, y: x + y)
}
