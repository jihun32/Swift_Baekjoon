import Foundation

//띄어쓰기로 입력받는거라 당연히 .split으로 입력받았는데 그렇게 하니 처리하기 너무 어려워
//입력부분만 인터넷을 찾아보니 그냥 공백포함한 문자열로 입력받음. 그러니 쉬워짐
let str = readLine()!
var result:String = ""
var chkBracket = false
var cnt = 0
var revStr:String = ""

for char in str {
    cnt += 1
    if char == "<" {
        chkBracket = true
        result.append(String(revStr.reversed()))
        revStr = ""
    }
    else if char == ">" {
        result.append(char)
        chkBracket = false
    }
    if chkBracket {
        result.append(char)
    }
    else {
        if char == ">" {
            continue
        }
        if char == " " {
            result.append(String(revStr.reversed()))
            result.append(" ")
            revStr = ""
            continue
        }
        revStr.append(char)
    }
}

if !str.isEmpty {
    result.append(String(revStr.reversed()))
}

print(result)

