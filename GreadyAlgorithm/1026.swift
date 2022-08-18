import Foundation

let n = Int(readLine()!)!
var a = readLine()!.split(separator: " ").map { Int(String($0))!}
var b = readLine()!.split(separator: " ").map { Int(String($0))!}
var sum = 0

for _ in 0..<n {
    let b_idx = b.firstIndex(of: b.max()!)!
    let a_idx = a.firstIndex(of: a.min()!)!
    sum += a[a_idx] * b[b_idx]
    b.remove(at: b_idx)
    a.remove(at: a_idx)
}

print(sum)
