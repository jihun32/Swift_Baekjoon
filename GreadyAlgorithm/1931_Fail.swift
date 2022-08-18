import Foundation

let n = Int(readLine()!)!
var arr = [[Int]]()

for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map {Int(String($0))!})
}
//2차원배열 정렬
var time = arr.sorted(by: {$0[0] < $1[0]})
var EndTime = 2147483647

//카운트가 1인상태에서 시작하므로 i+1부터 돌려주기 위해 최소값의 i를 얻어옴
var pre_EndTime = 0
var min_i = 0
for i in 0..<n {
    pre_EndTime = EndTime
    EndTime = min(EndTime, time[i][1])
    if(EndTime != pre_EndTime) {min_i = i}
}

var cnt = 1
var compare_cnt = 0

for i in min_i + 1..<n {
    if(EndTime <= time[i][0]) {
        //이전 cnt와 비교하기 위해
        compare_cnt = cnt
        for j in i..<n {
            if (time[i][1] > time[j][1]) {
                cnt += 1
                EndTime = time[j][1]
                //print("j s \(time[j][0]), e \(time[j][1])")
            }
        }
        //for문이 안 돌 경우 끝나는시간이
        //현재 선택된 회의에 끝나는 시간보다 적은게 없다는 것이므로 cnt++
        if(compare_cnt == cnt){
            cnt += 1
            EndTime = time[i][1]
            //print("i s \(time[i][0]), e \(time[i][1])")
        }
    }
}

print(cnt)

//실패 이유
//반례를 계속 찾아 그에 맞게 처리해줬지만 아래 반례를 보고 마땅한 해답이 나오지 않아 이 알고리즘이 틀렸다 생각하여
//다시 코딩

//반례
//17
//2 9
//3 11
//5 12
//4 54
//9 52
//4 63
//26 43
//8 73
//3 87
//2 91
//51 51
//32 82
//45 83
//38 91
//60 94
//68 94
//84 93
//정답 :4

