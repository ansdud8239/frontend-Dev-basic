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

console.log("\n---------\n");
numbers.forEach(n=>process.stdout.write(`${n}: ${(x=> x*x)(n)}\t`));

console.log("\n---------\n");
[5,3,15,1045,43,92].forEach(e => {
    if(e%5){
        process.stdout.write(`${e}: ${(x=> x*x)(e)}\t`)
    }
});
