const fetch = require('./ex02');

const ex03 = async function(param){
    try{
        const data = await fetch(param);
        console.log(data);
    }catch(error){
        console.error(error);
    }
}
//ex03("data"); //ok
ex03(""); //error
console.log("wait....");








