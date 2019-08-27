class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

enum VendingMachineError: Error {
    case ArgumentException
}

func getNth(_ head: Node?, _ index: Int) throws -> Node? {
    var i = index
    var resalt = head
    while i > 0 {
        if resalt == nil { throw VendingMachineError.ArgumentException }
        resalt = resalt?.next
        i -= 1
    }
    return resalt
}
