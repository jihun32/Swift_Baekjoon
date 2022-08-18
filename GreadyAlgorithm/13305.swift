import Foundation

let n = Int(readLine()!)!
let distance = readLine()!.split(separator: " ").map { Int(String($0))!}
var price = readLine()!.split(separator: " ").map { Int(String($0))!}

var sum = 0
var min = price[0]

for i in 0..<n-1 {
    if price[i] < min {
        min = price[i]
    }
    sum += min * distance[i]
    
}
print(sum)

