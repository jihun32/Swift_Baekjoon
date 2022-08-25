
import Foundation

struct Queue<T> {
    var queue: [T] = []
    
    var size: Int {
        return queue.count
    }
    var empty: Bool {
        return queue.isEmpty
    }
    var front: T {
        return queue.first!
    }
    var back: T {
        return queue.last!
    }
    mutating func push(_ element: T) {
        queue.append(element)
    }
    mutating func pop() -> Int {
        return queue.removeFirst() as! Int
    }
}

let n = Int(readLine()!)!
var queue = Queue<Int>()

for _ in 0..<n {
    let command = readLine()!.split(separator: " ")
    
    switch command[0] {
    case "size" :
        print(queue.size)
    case "empty" :
        if queue.empty {
            print("1")
        } else {
            print("0")
        }
    case "front" :
        if queue.empty {
            print("-1")
        } else {
            print(queue.front)
        }
    case "back" :
        if queue.empty {
            print("-1")
        } else {
            print(queue.back)
        }
    case "pop" :
        if queue.empty {
            print("-1")
        } else {
            print(queue.pop())
        }
    case "push" :
        queue.push(Int(command[1])!)
    default :
        break
    }
}
