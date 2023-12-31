import UIKit


/*:
 ## 범위(Scope)
 * Scope - 함수, if, for문 등에 모두 해당
 ---
 */
/**====================================================================================
 - 1. 변수는 코드에서 선언이 되어야, 그 이하의 코드에서 접근 가능(선언하기 이전에는 접근 불가함) (전역변수는 예외)
 - 2. 상위스코프(범위)에 선언된 변수와 상수에 접근가능하며, 하위스코프(범위)에는 접근할 수 없다.
 - 3. (동일한 스코프에서 이름이 중복될 수 없지만, 다른 스코프에서는 이름 중복이 가능)
 가장 인접한 스코프에 있는 변수와 상수에 먼저 접근 한다.
 =====================================================================================**/


/*:
 ---
 * 첫번째 예제
 ---
 */
func greeting1() {
    print("Hello")
    
    var myName = "홍길동"
    print(myName)
    
    print(name)
    
    if true {
        print(myName)
        print(name)
    }
}


//print(myName)
//print(name)



//greeting1()


var name = "잡스" // 전역변수 (메모리의 데이터 영역에 저장)


greeting1()




/*:
 ---
 * 두번째 예제
 ---
 */

//func doSomething() {
//    print(realName)       // 코드는 순서대로 작동하기 때문에, 선언이 되어있어야 사용 가능
//
//    var realName = "앨런"
//}


//doSomething()




/*:
 ---
 * 세번째 예제
 ---
 */

func sayGreeting1() {
    print("Hello")
    
    
    func sayGreeting2() {
        print("Hey")
        
        if true {
            print("")
        }
    }
    
    sayGreeting2()
    
}


sayGreeting1()
//sayGreeting2()




//:> 라인 맞추기 ➞ (전체선택: Command + A) ➞ (줄맞추기: Control + I)





