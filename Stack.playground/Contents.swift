import UIKit

struct Stack<Element> {
    
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
}

extension Stack: CustomStringConvertible {
    
    var description: String {
        "Stack: \( items)"
    }
}

var stack = Stack<Int>()
stack.push(0)
stack.push(1)
stack.push(2)

stack.pop()
print(stack)
print(stack.count())
