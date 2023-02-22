/*
    구문(statement)
    1. 자바스크립트 실행 단위
    2. 구성요소
        값,연산식: 표현식
        주석 : 구문이지만 실행하지 않는다.
        예약어 : if,else,for
    3. 구문의 예
        if,if-else
        while,do-while,for
        for~in
        switch
        변수 정의
    4. 공백:토큰 구분,무시
    5. 세미콜론 : 
    6. 개형(line breager)
*/

// ;(세미콜론)하는 역할을 표현식을 표현식구문으로 만들어 바로 실행하게끔 한다.
o = 'Hello World';console.log(o);

// 개행은 ;으로 대체된다.
i=10
console.log(i)


// 2.
// 하지만
// 상황에 따라서 토큰을 분리하는 역할도 한다.
a
=
2
+
3
console.log(a);

// cons = 10;

// cons;
// ole.log(a);