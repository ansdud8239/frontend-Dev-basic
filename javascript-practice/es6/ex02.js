/*
    const: Block Scope의 상수
*/

//1. block scope
try{
    if(true){
        const Num = 10;
    }
    console.log(NUM);
}catch(e){
    console.error("error:"+e);
}

//2. error: 대입(assignment) 에러
try{
    const NUM = 10;
    NUM = 20;
}catch(e){
    console.error('error:'+e);
}

