import Foundation

let n = Int(readLine()!)!
var arr = [(Int,Int)]()
var cnt = 0
var endTime = -1

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let (n1,n2) = (input[0],input[1])
    arr.append((n1,n2))
}
arr.sort {
    if $0.1 == $1.1 {
        return $0.0 < $1.0
    } else {
        return $0.1 < $1.1
    }
}
for i in arr {
    if(i.0 >= endTime) {
        endTime = i.1
        cnt += 1
    }
}

print(cnt)

