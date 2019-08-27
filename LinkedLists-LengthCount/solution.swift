import Foundation

class Node {
    var data: Int
    var next: Node?
    init(_ data: Int) {
        self.data = data
    }
}

func length(_ head: Node?) -> Int {
    var i = 0
    var headBuff = head
    
    while headBuff != nil {
        headBuff = headBuff?.next
        i += 1
    }
    return i
}

func count(_ head: Node?, _ data: Int) -> Int {
    var i = 0
    var headBuff = head
    
    while headBuff != nil {
        if headBuff?.data == data {
            i += 1
        }
        headBuff = headBuff?.next
    }
    return i
}
