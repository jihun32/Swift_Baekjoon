import Foundation

let n = Int(readLine()!)!
var nArr = readLine()!.split(separator: " ").map{Int(String($0))!}
var stack = [Int]()

for i in 0..<n {
    while !stack.isEmpty && nArr[stack.last!] < nArr[i] {
        nArr[stack.removeLast()] = nArr[i]
    }
    stack.append(i)
}

while !stack.isEmpty {
    nArr[stack.removeLast()] = -1
}

print(nArr.map{String($0)}.joined(separator: " "))
