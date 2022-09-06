import Foundation

let n = Int(readLine()!)!
let max = 1000003
var arrN = readLine()!.split(separator: " ").map{ Int(String($0))!}
let arrN2 = arrN
var stack = [Int]()
var arrCnt = [Int](repeating: 0, count: max)

for i in 0..<n {
    arrCnt[arrN[i]] += 1
}

for i in 0..<n {
    arrN[i] = arrCnt[arrN[i]]
}
for i in 0..<n {
    while !stack.isEmpty && arrN[stack.last!] < arrN[i] {
        arrN[stack.removeLast()] = arrN2[i]
    }
    stack.append(i)
}
while !stack.isEmpty {
    arrN[stack.removeLast()] = -1
}
print(arrN.map{String($0)}.joined(separator: " "))
