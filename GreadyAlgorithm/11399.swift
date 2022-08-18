import Foundation

let n = Int(readLine()!)!
var time = readLine()!.split(separator: " ").map { Int(String($0))!}
var sum = 0
var i = 0
time.sort()

for idx in time {
    sum += idx
    time[i] = sum
    i += 1
}
let result = time.reduce(0, +)
print(result)


