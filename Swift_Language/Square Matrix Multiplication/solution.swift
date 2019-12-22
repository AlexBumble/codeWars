func matrixMultiplication(_ a:[[Int]], _ b:[[Int]]) -> [[Int]] {
    return a.map{
        var buffRow = [Int]()
        for n in 0..<b.count {
            var buffValue = 0
            for (index, value) in $0.enumerated() {
                buffValue += value * b[index][n]
            }
            buffRow.append(buffValue)
        }
        return buffRow
    }
}

