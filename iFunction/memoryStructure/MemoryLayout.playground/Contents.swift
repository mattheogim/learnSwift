import UIKit


/*:
## 참고) 함수 실행의 메모리 구조
* 3 + 4 = 7 에 대한 이해
---
*/

var a1 = 3
var a2 = 4
var a3 = a1 + a2
print(a3)



/*:
---
* 3 + 4 = 7을 함수로 정의한다면
---
*/
// 함수를 정의
func threeAndFour() {
    var a1 = 3
    var a2 = 4
    var a3 = a1 + a2
    print(a3)
}



// 함수의 실행
threeAndFour()




/*:
---
* 플레이그라운드에 대한 가정 (메모리 구조를 더 잘 이해하기 위함)
---
*/

// 프로그래밍에서, 가장 처음으로 프로그래밍이 시작되는 곳은 main() 메인함수 (스위프트에서는 main.swift파일)
// 플레이 그라운드는 문법을 쉽게 공부하기 위한 목적이므로 main() 함수는 눈에 보이지 않지만, 구현이 되어있다고 가정

// (실제 앱을 만드는 것이 아니므로) 메모리 구조상 (static영역이 일단은 없다고 가정하기위해서) ➡︎ 현재 공부하는데 방해됨


func main() {
    
    var name = "홍길동"
    
    // 우리가 현재 구현하는 곳 ====> 현재의 플레이그라운드
    
    
}


main()    // 앱을 키면 ====> 프로그램을 실제 시작시킴



/*:
---
* addTwoNumbers(a: Int, b: Int) 함수
---
*/

func addTwoNumbers(a: Int, b: Int) -> Int {
    var c = a + b
    return c
}



var num1 = 5    // 이 예제에서는 전역변수가 아닌 main()함수의 영역이라고 가정
var num2 = 3    // 이 예제에서는 전역변수가 아닌 main()함수의 영역이라고 가정

var num3 = addTwoNumbers(a: num1, b: num2)

print(num3)





/*:
## 예시를 통한 이해
* 함수 실행시, 실제 메모리에서 어떻게 동작할까?
---
*/

// 메모리 예제


var total: Int = 0    // 실제 전역변수라면 (데이터영역)


func square(_ i: Int) -> Int {     // x 제곱
    return i * i
}


func squareOfSum(_ x: Int, _ y: Int) -> Int {    // (x + y)(x + y)
    var z = square(x + y)
    return z
}


func startFunction() {
    var a = 4
    var b = 8
    total = squareOfSum(a, b)
}



startFunction()




/*:
---
* 함수와 변수의 변화 예제
---
*/
var a = 1       // 실제 전역변수라면
var b = 1       // 실제 전역변수라면


func addOneMore2() -> Int {
    b += 1
    return 5
}


func addOneMore1() {
    var num = 0
    a += 1
    num += addOneMore2()
    print(num)
}



addOneMore1()






/*:
 ## 조건문과 반복문의 명령어(CPU) 구조
* 조건문(if문)
---
*/
var c = 0

func someConditionalStatement(a: Int) {
    if a >= 0 {
        c += 1
    } else {
        c += 7
    }
}


someConditionalStatement(a: -3)




/*:
---
* 반복문
---
*/

var d = 0

func someLoop() {
    for i in 1...5 {
        d += i
    }
}


someLoop()





