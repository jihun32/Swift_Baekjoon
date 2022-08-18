import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let strArr = readLine()!.split(separator: " ")
    var newStr = ""
    for i in 0..<strArr.count {
        let splitStr = strArr[i]
        for j in (0...splitStr.count - 1).reversed() {
            let lastIdx = (splitStr.index(splitStr.startIndex, offsetBy: j))
            newStr.append(splitStr[lastIdx])
        }
        if i != strArr.count - 1 {
            newStr.append(" ")
        }
    }
    print(newStr)
}
