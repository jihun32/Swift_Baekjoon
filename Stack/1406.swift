
import Foundation

var cursorLeft = Array(readLine()!)
var cursorRight = Array<Character>()
let n = Int(readLine()!)!

for _ in 0..<n {
    let cmd = readLine()!
    var element: Character
    switch cmd {
    case "L" :
        if !cursorLeft.isEmpty {
            element = cursorLeft.removeLast()
            cursorRight.append(element)
        }
    case "D" :
        if !cursorRight.isEmpty {
            element = cursorRight.removeLast()
            cursorLeft.append(element)
        }
    case "B" :
        if !cursorLeft.isEmpty {
            cursorLeft.removeLast()
        }
    default :
        cursorLeft.append(cmd.last!)
    }
}
print(String(cursorLeft + cursorRight.reversed()))
