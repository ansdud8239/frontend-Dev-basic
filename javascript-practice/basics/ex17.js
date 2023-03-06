/*
Founction.prototype.call
Founction.prototype.apply
Founction.prototype.bind

*/

var myObject = {
    v:"my",
    f1: function(){
        console.log(this.v);
    },
    f2: function(p1,p2){
        console.log(p1+" "+this.v+" "+(p2?p2:""));
    }
}

var yourObject = {
    v:'you'
}
// 일반적인 개체의 함수 호출
myObject.f1(); 

// apply : 호출되는 함수의 this 파라미터로 전달된 객체로 바꾼다.
myObject.f1.apply(yourObject);

// call : 호출되는 함수의 this 파라미터로 전달된 객체로 바꾼다. + 다른 파라미터도 전달할 수 있음.
myObject.f2.call(yourObject,'hello');
myObject.f2.call(yourObject,'hello','again');

//bind: 호출되기 전에 함수의 this로 호출된 파라미터를 사용
var f3 = function() {
    console.log(this.v);
}.bind(myObject);

f3();


