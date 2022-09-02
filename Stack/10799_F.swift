import Foundation

var bar = readLine()!
var arr = [Character]()
var lastBar = ""
var result = 0
//혼자 못풀고 푸는법 봄
//나중에 다시 도전
for c in bar {
    if c == "(" {
        arr.append(c)
        lastBar = "("
    }
    else {
        if !arr.isEmpty {
            arr.removeLast()
        }
        if lastBar == "(" {
            result += arr.count
        }
        else if lastBar == ")" {
            result += 1
        }
        lastBar = ")"
    }
}
print(result)
