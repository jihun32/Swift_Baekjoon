import Foundation

struct Deque<T> {
    var deque = [T]()
    
    var size: Int{
        return deque.count
    }
    var empty: Bool {
        return deque.isEmpty
    }
    var front: T {
        return deque.first!
    }
    var back: T {
        return deque.last!
    }
    
    mutating func push_front(_ element: T) {
        deque.insert(element, at: 0)
    }
    mutating func push_back(_ element: T) {
        deque.append(element)
    }
    mutating func pop_front() -> T {
        return deque.removeFirst()
    }
    mutating func pop_back() -> T {
        return deque.removeLast()
    }
}

let n = Int(readLine()!)!
var deque = Deque<Int>()

for _ in 0..<n {
    let command = readLine()!.split(separator: " ")
    
    switch command[0] {
    case "size":
        print(deque.size)
    case "empty":
        if deque.empty {print("1")}
        else {print("0")}
    case "front":
        if deque.empty {print("-1")}
        else {print(deque.front)}
    case "back":
        if deque.empty {print("-1")}
        else {print(deque.back)}
    case "push_front":
        deque.push_front(Int(command[1])!)
    case "push_back":
        deque.push_back(Int(command[1])!)
    case "pop_front":
        if deque.empty {
            print("-1")
        }else {
            print(deque.pop_front())
        }
    case "pop_back":
        if deque.empty {
            print("-1")
        }else {
            print(deque.pop_back())
        }
    default :
        break
    }
}

