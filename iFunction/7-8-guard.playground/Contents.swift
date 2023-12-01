import UIKit


/*:
 # guard문
 */
/*:
 ## 가드문(guard statement)
 * 불만족하는 조건을 사전에 걸러내는 조건문
 ---
 */
//:> if문의 단점 - 여러개의 조건이 있을때 코드의 가독성이 문제됨 ➞ guard문으로 단점 극복
// if문을 만족하는 경우, 지속적인 들여쓰기로 인해 코드의 가속성이 안 좋아질 수 있음
// (실제 프로젝트에서는 코드를 알아보기 힘듦)



/**=======================================================
 - guard문
 - 1) else문을 먼저 배치 - 먼저 조건을 판별하여 조기 종료(early exit)
 - 2) 조건을 만족하는 경우 코드가 다음 줄로 넘어가서 계속 실행
 - 3) 가드문에서 선언된 변수를 아래문장에서 사용 가능 (동일한 스코프로 취급) (guard let 바인딩 관련)
=======================================================**/

/*:
 ---
 * 가드문의 이해
 ---
 */

func checkNumbersOf1(password: String) -> Bool {
    
    if password.count >= 6 {
        
        // 로그인을 처리하는 코드 작성
        // 1
        // 2
        // 3
        // 4
        // 5
        
        return true
        
    } else {
        
        return false
        
    }

}




func checkNumbersOf2(password: String) -> Bool {
    
    // 감시하다
    guard password.count >= 6 else {
        return false                          // 종료 조건 - 함수 내에서는 return / throw
    }
    
    // 로그인을 처리하는 코드 작성
    // 1
    // 2
    // 3
    // 4
    // 5
    
    return true
}





/*:
 ---
 * 가드문의 사용 예시
 ---
 */


// 반드시 코드를 종료해야하는 조기 종료의 조건이 필요하므로, 로컬스코프(함수/반복문) 내에서만 사용 가능

func check(words: String) -> Bool {
    
    guard words.count >= 5 else {
        
        print("5글자 미만입니다.")
        
        return false                             // 종료 조건 - 함수 내에서는 return / throw
    }
    
    print("\(words.count)글자입니다.")
    
    return true
}



check(words: "안녕하세요")


//:> 실제 프로젝트에서 몇번 사용하다보면 바로 감이 옴



