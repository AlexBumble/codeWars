// MARK: My solution

enum VendingMachineError: Error {
  case ArgumentOutOfRangeException
  }

func insertNth(_ head: Node?, _ index: Int, _ data: Int) throws -> Node? {
  let newNode = Node(data)
  guard var buffNode = head else { newNode.next = nil; return newNode }
  guard index > 0 else { newNode.next = buffNode; return newNode }
  var i = index
  while i > 1 {
    if buffNode.next != nil {
      buffNode = buffNode.next!
    } else {
      throw VendingMachineError.ArgumentOutOfRangeException
    }
    i -= 1
  }
  let tail = buffNode.next
  newNode.next = tail
  buffNode.next = newNode
  return head
}

// MARK: Best solution

enum InsertNthError: Error {
  case outOfRange
}

func insertNth(_ head: Node?, _ index: Int, _ data: Int) throws -> Node? {
  if index == 0 {
    let node = Node(data)
    node.next = head
    return node
  }
  
  guard let node = head else { throw InsertNthError.outOfRange }
  node.next = try insertNth(node.next, index - 1, data)
  return node
}

// Сonclusion:
// Need to grow up in recursion
