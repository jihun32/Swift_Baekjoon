import Foundation

let n_k = readLine()!.split(separator: " ").map {Int(String($0))!}

var dong = [Int]()
var result = n_k[1]
var cnt = 0
for _ in 0..<n_k[0] {
    dong.append(Int(readLine()!)!)
}
while(result != 0) {
    for i in (0..<dong.count).reversed(){
        if(dong[i] <= result) {
            var j = 0
            while(true){
                j += 1
                cnt += 1
                if(dong[i] * j > result){
                    j -= 1
                    cnt -= 1
                    break
                }
                else if(dong[i] * j == result){
                    break
                }
            }
            result -= dong[i] * j
        }
    }
}

print(cnt)
