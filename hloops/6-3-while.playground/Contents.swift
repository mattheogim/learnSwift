import UIKit


/*:
 ## 2) while문
 * While문의 기본 형태
 ---
 */
var sum = 0
var num = 1

while num <= 50 {   // 조건이 만족하는 동안 계속 반복
    sum += num
    num += 1      // 이런 조건이 필요 (위의 조건식을 변화시키지 않으면 무한 반복하게됨)
}


print("총 합의 출력: ", sum)

// 조건을 주의해서 짜야함
//:> 무한반복(루프)을 주의


/**============================================================
 for문과 비교
 - 1) 반복이 시작되기 전에, 반복 횟수가 정해져 있지 않을때 사용 (조건에 의해 반복)
 - 2) 조건이 거짓이 될 때까지 일련의 명령문 수행
     (반드시 while문 내부에서 조건을 변화시키는 일이 일어나야함)
==============================================================**/




/*:
 ## 3) repeat-While문
 * repeat-While문의 기본 형태
 ---
 */

var i = 1

repeat {
    print("\(3) * \(i) = \(3 * i)")
    i += 1
} while i <= 9





// 일단 한번은 실행하고 나서, 조건을 판단해서 실행


// (조건(컨디션)이 마지막에 있음)
// 루프를 통과하는 각 패스의 끝 부분에서 조건을 평가


// (스위프트 이외의) 다른 언어에서는 do - while 문으로 명명




/*:
---
* while문과 repeat-While문의 차이
---
*/
// 미세한 차이가 생길 수 있으므로 주의해서 사용해야 함


var number = 5
var sumOfNum = 0


while number < 5 {
    sumOfNum += number
    number += 1
}

number      // 5
sumOfNum    // 0





// 위와 차이가 생김
// repeat-while문은 코드를 먼저 실행한 다음 조건을 확인

number = 5
sumOfNum = 0

repeat {
    sumOfNum += number
    number += 1
} while number < 5

number      // 6
sumOfNum    // 5






