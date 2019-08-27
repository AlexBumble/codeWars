class Node {
    var data: Int
    var next: Node?
    
    init(_ data: Int) {
        self.data = data;
    }
}

func push(_ head:Node?, _ data:Int) -> Node {
    let elem = Node(0)
    
    elem.data = data
    elem.next = head
    return elem
}

func buildOneTwoThree() -> Node {
    let elem = push((push((push(nil, 3)), 2)), 1)
    return elem
}
