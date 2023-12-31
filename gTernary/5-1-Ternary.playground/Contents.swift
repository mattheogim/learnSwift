import UIKit

/*:
 # Part5 - 삼항 연산자와 범위연산자
 -
 */
/*:
 ## 1) 삼항 연산자(Ternary Conditional Operator)
 * 기본 형태 / if문보다 조금은 한정적인 형태로 사용 가능
 ---
 */

var a = 10


//if/else문

if a > 0 {
    print("1")
} else {
    print("2")
}




// 3항 연산자 (위의 if/else문과 완벽하게 동일)

a > 0 ? print("1") : print("2")




// 한줄인 경우
// 주로 값을 대입하는 경우 (주로 값에서 2가지에서 한가지를 선택하는 경우)


//:> 조건에 따라 선택이 두가지인 경우 ➞ 삼항연산자를 떠올리자

/*:
 ---
 * 사용 예시
 ---
 */
var name = a > 0 ? "스티브" : "팀쿡"


//위는 아래와 같다..

if a > 0 {
    name = "스티브"
} else {
    name = "팀쿡"
}





