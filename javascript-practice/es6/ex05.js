/*
Arrow Function
*/
const numbers=[1,2,3,4,5];

const power = function(x){
    return x*x;
}

numbers.forEach(function(n){
    process.stdout.write(`${n}: ${power(n)}\t`);
});

//ex1
console.log("\n---------\n");
numbers.forEach(function(n){
    //let result = (function(x){
    //   return x * x;
    //})(n);
    let result = ((x) => {return x*x})(n);
    process.stdout.write(`${n}: ${result}\t`);
});

//ex2
console.log("\n---------\n");
numbers.forEach(n=>process.stdout.write(`${n}: ${(x=> x*x)(n)}\t`));

//ex3
console.log("\n---------\n");
[5,3,15,1045,43,92].forEach(e => {
    if(e%5){
        process.stdout.write(`${e}: ${(x=> x*x)(e)}\t`)
    }
});

//ex4 - this를 어휘적으로 바인딩(Lexical Bind)
console.log("\n---------\n");
const dooly = {
    name: '둘리',
    friends: ['또치','마이콜','도우너','길동'],
    printFriends: function(){
        //console.log(this);
        this.friends.forEach(function(f){
            console.log(`${this.name}의 친구 ${f}`);
        })
    }
};

dooly.printFriends();


