import UIKit


/*:
 ## 3) 패턴매칭 연산자(~=)
 * 패턴매칭 연산자: 숫자가 범위내에 있는지 확인하는 연산자
 ---
 */
let range = 1...10

range ~= 5

// 결과 값은 참과 거짓




/*:
---
* 10 <= n <= 100 이런 문장은 스위프트에서 성립하지 않는다.
---
*/

var n = 20


if n >= 10 && n <= 100 {
    print("10이상, 100이하입니다.")
}


if 10...100 ~= n {
    print("10이상, 100이하입니다.")
}




/*:
---
* 연습
---
*/


var randomAge = Int.random(in: 1...99)

if 10...100 ~= randomAge {
    print("the number is \(randomAge) higher than 10 lower than 100" )
} else {
    print("the number is \(randomAge)")
}

randomAge = Int.random(in: 1...999)

switch randomAge {
case 15...29 :
    print("20s")
default :
    print("nah")
}
var age = Int.random(in: 1...99)

if 10...100 ~= age {
    print("the number is \(age) higher than 10 lower than 100" )
} else {
    print("the number is \(age)")
}

age = Int.random(in: 1...999)

switch age {
case 15...29 :
    print("20s")
default :
    print("nah")
}



var age = 31


if 20...29 ~= age {
    print("20대 입니다.")
}




// 스위치문은 내부적으로 패턴매칭 연산잘로 구현이 되어있음


switch age {
case 20...29:
    print("20대 입니다.")
case 30...39:
    print("30대 입니다.")
default :
    break
}







