import Foundation

let n = Int(readLine()!)!
var nArr = readLine()!.split(separator: " ").map{Int(String($0))!}
var resultArr = [Int]()
var removeArr = [Int]()

for _ in 0..<n {
    let num = nArr.removeFirst()
    removeArr = nArr
    while !removeArr.isEmpty {
        if num < removeArr[0] {
            resultArr.append(removeArr[0])
            break
        }
        removeArr.removeFirst()
    }
    if removeArr.isEmpty {resultArr.append(-1)}
}
print(resultArr.map{String($0)}.joined(separator: " "))
