import Foundation

let n_k = readLine()!.split(separator: " ").map{Int(String($0))!}
var arrN = [Int]()
var arrResult = [Int]()
var n = n_k[0]
var k = n_k[1]

for i in 1...n {
    arrN.append(i)
}
var i = k - 1
var len = n

while true {
    arrResult.append(arrN.remove(at: i))
    i += k - 1
    len -= 1
    if len == 0 {
        break
    }
    //나는 i가 배열보다 커지면 나머지로 나누어 줬는데
    // i = (i + (k - 1)) % len으로 해주면 코드가 더욱 간결해짐
    if i >= len{
        i %= len
    }
}
print("<" + arrResult.map { String($0) }.joined(separator: ", ") + ">")
