import Foundation

struct Stack<T>{
    var stack: [T] = []
    
    var size: Int {
        return stack.count
    }
    
    var empty: Bool {
        return stack.isEmpty
    }
    
    func top() -> T? {
        return stack.last
    }
    
    mutating func push(_ element: T) {
        stack.append(element)
    }
    mutating func pop() {
        stack.removeLast()
    }
    
}
let n = Int(readLine()!)!
var stack = Stack<Int>()

for _ in 0..<n {
    let command = readLine()!.split(separator: " ")
    
    switch command[0] {
    case "push":
        stack.push(Int(command[1])!)
    case "pop":
        if stack.empty {
            print("-1")
        }
        else {
            print(stack.top()!)
            stack.pop()
        }
    case "size":
        print(stack.size)
    case "empty":
        if stack.empty {
            print("1")
        }else {
            print("0")
        }
    case "top":
        if stack.empty {
            print("-1")
        }else {
            print(stack.top()!)
        }
    default:
        break
    }
}
