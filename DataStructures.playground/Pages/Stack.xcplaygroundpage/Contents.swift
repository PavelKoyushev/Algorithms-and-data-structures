import UIKit

protocol Stacks {
    associatedtype Element
    
    mutating func push(_ element: Element)
    mutating func pop() -> Element?
    func top() -> Element?
}

struct Stack<Element>: Stacks {
    
    private var items: [Element] = []
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element? {
        items.popLast()
    }
    
    func count() -> Int {
        items.count
    }
    
    func top() -> Element? {
        items.last
    }
}

extension Stack: CustomStringConvertible {
    
    var description: String {
        "Stack: \( items)"
    }
}

var stack = Stack<Int>()

stack.push(0)
stack.push(1)
stack.push(1)
stack.push(2)
stack.push(3)
stack.pop()

print(stack)
print(stack.count())
print(stack.top())
