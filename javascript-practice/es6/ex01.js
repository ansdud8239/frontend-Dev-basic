/*
    let: Block Scope의 변수
*/
// let 블록 범위
try{

    if(true){
        var i = 10;
        let j = 10;
    }
    console.log(i);
    console.log(j);
}catch(e){
    console.error('error: '+e);
}

// cf: var 함수 범위
try{
    let f = function(){
        var m = 20;
    }    
    f();
    console.log(m);
}catch(e){
    console.error('error:'+e);
}


