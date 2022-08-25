import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let str = Array(readLine()!)
    var left_cnt = 0
    var right_cnt = 0
    var vpsChk = true
    for chk in str.reversed() {
        if chk == "(" {
            left_cnt += 1
        }
        else if chk == ")" {
            right_cnt += 1
        }
        if left_cnt > right_cnt {
            print("NO")
            vpsChk = false
            break
        }
    }
    if left_cnt != right_cnt && vpsChk == true{
        print("NO")
    }
    else if vpsChk {
        print("YES")
    }
}
