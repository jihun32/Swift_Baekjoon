import Foundation

let equation = readLine()!
var sign = [(Character)]()
for i in equation {
    if i == "+" || i == "-" {
        sign.append(i)
    }
}
let num = equation.components(separatedBy: ["+", "-"])
var result = Int(num[0])!
var nIdx = 1
var i = 0
var sum = 0

while(i < sign.count){
    if(sign[i] == "+") {
        result += Int(num[nIdx])!
        nIdx += 1
        i += 1
    }
    else if(sign[i] == "-") {
        for _ in i+1...sign.count {
            sum += Int(num[nIdx])!
            nIdx += 1
        }
        result -= sum
        break
    }
}
print(result)
