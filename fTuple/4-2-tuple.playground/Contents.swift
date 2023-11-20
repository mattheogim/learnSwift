import UIKit

/*:
 ## 2) 튜플과 switch문
 * 튜플의 매칭(Mathching)
 ---
 */
let iOS = (language: "Swift", version: "5")




// 이런 코드를 아래의 스위치문을 이용하면 단순해짐
if iOS.0 == "Swift" && iOS.1 == "5" {
    print("스위프트 버전 5입니다.")
}


if iOS == ("Swift", "5") {
    print("스위프트 버전 5입니다.")
}



// 스위프트의 switch문은 튜플 매칭을 지원 ===> 코드를 단순한 형태로 표현 가능

switch iOS {
case ("Swift", "5"):
    print("스위프트 버전 5입니다.")
case ("Swift", "4"):
    print("스위프트 버전 4입니다.")
default:
    break
}




/*:
 ---
 * 튜플의 활용
 ---
 */
// 튜플의 바인딩

var coordinate = (0, 5)   // 좌표계

switch coordinate {
case (let distance, 0), (0, let distance):   // x축이나 y축에 있으면 출력하라는 코드
    print("X 또는 Y축 위에 위치하며, \(distance)만큼의 거리가 떨어져 있음")
default:
    print("축 위에 있지 않음")
}





// 튜플의 where절 활용

coordinate = (5, 0)


switch coordinate {
case (let x, let y) where x == y:      //일단 x, y를 상수로 지정해주고, 그리고 나서 비교한다.
    print("(\(x), \(y))의 좌표는 y = x 1차함수의 그래프 위에 있다.")
    
case let (x, y) where x == -y:
    print("(\(x), \(y))의 좌표는 y = -x 1차함수의 그래프 위에 있다.")
    
case let (x, y):
    print("(\(x), \(y))의 좌표는 y = x, 또는 y = -x 그래프가 아닌 임의의 지점에 있다.")
}




