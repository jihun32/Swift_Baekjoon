import Foundation

let n = Int(readLine()!)!
let equation = readLine()!
var num = [Int]()
var stack = [Double]()
var cal:Double = 0.0
var n2: Double, n1: Double
for _ in 0..<n {
    num.append(Int(readLine()!)!)
}

for char in equation.utf16 {
    if char >= 65 {
        stack.append(Double(num[Int(char)-65]))
        continue
    }
    // 곱하기
    else if char == 42 {
        
        n2 = stack.removeLast()
        if !stack.isEmpty {
            n1 = stack.removeLast()
        }
        else {
            n1 = n2
        }
        cal = n1 * n2
    }
    // 더하기
    else if char == 43 {
        n2 = stack.removeLast()
        if !stack.isEmpty {
            n1 = stack.removeLast()
        }
        else {
            n1 = n2
        }
        cal = n2 + n1
    }
    // 빼기
    else if char == 45 {
        n2 = stack.removeLast()
        if !stack.isEmpty {
            n1 = stack.removeLast()
        }
        else {
            n1 = n2
        }
        cal = n1 - n2
    }
    // 나누기
    else if char == 47 {
        n2 = stack.removeLast()
        if !stack.isEmpty {
            n1 = stack.removeLast()
        }
        else {
            n1 = n2
        }
        cal = n1 / n2
    }
    stack.append(cal)
}
let result = String(format: "%.2f", cal)
print(result)

