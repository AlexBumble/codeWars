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
