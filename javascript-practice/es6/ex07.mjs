
// 1.
// unnamed import하는 모듈에서 대상을 하나 import할 때는 이름을 지정해야한다
import myFunction from './ex07.01.mjs';
import myObject from './ex07.02.mjs';

console.log(myFunction(10,20));
console.log(myObject.add(10,20));


//2.
// named export는 import 대상이 다수가 될 수 있기 때문에 하나의 특정 이름으로 받을 수 없다.
//import m from './ex07.03.mjs';
//대신 * as ~ 를 사용한다. 
import * as m from './ex07.03.mjs';
//import { add } from './ex07.03.mjs';
//console.log(add(10,20));
console.log(m.add(10,20));
console.log(m.substract(10,20));

//3.
import { substract } from './ex07.04.mjs';
console.log(substract(10,20));

// 4.
import math,{add} from './ex07.05.mjs';
console.log(math.add(10,20),add(10,20));
