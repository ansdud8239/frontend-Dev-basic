/*
Array 확장(prototype 기반의 확장)
List 함수

  */

Array.prototype.remove = function(index){
    this.splice(index,1);
}

Array.prototype.insert = function(index,value){
    if(value instanceof Array){
        // for(var i = 0;i<value.length;i++){
        //     this.splice(index+i,0,value[i]);
        // }
        
        // 오류!
        // 콜백함수 안에 this는 어휘상의 this와 일치하지 않는다
        // value.forEach(function(e){
        //     // Type error
        //     // function에서 호출하는 this는 a배열이 아님
        //     this.splice(index++,0,e);
        // });

        // 해결방법 1
        //console.log('this = ',this); // [1,2,4]
        // var _this = this;
        // value.forEach(function(e){
        //     _this.splice(index++,0,e);
        // });

        // 해결방법 2
        // Function.prototype.bind() 이 함수를 사용한다
        // bind(객체)  = 콜백함수 블록안의 this(객체)를 셋팅
        value.forEach(function(e){
            this.splice(index++,0,e);
        }.bind(this));
    
    }else{
        this.splice(index,0,value);
    }
}

// List함수 사용하기
var a = [1,2,4];
console.log(a);

a.insert(2,3);
console.log(a);

a.remove(2);
console.log(a);

a.insert(2,['a','b','c']);
console.log(a);

