
import Foundation

var str = readLine()!
let n = Int(readLine()!)!
var cursor = str.count
var cursorIdx: String.Index

for _ in 0..<n {
    let command = readLine()!
    let insertP = command.last!
    switch command {
    case "L":
        if cursor > 0 {
            cursor -= 1
        }
    case "B":
        if cursor != 0 {
            let cursorIdxL = str.index(str.startIndex, offsetBy: cursor)
            cursorIdx = str.index(before: cursorIdxL)
            str.remove(at: cursorIdx)
        }
        if cursor > 0 {
            cursor -= 1
        }
    case "D":
        if cursor < str.count {
            cursor += 1
        }
    default:
        cursorIdx = str.index(str.startIndex, offsetBy: cursor)
        str.insert(insertP, at: cursorIdx)
        if cursor < str.count {
            cursor += 1
        }
    }
}
print(str)

//문자열 인덱스로 접근해 값을 바꾸려하니 시간초과가 남
