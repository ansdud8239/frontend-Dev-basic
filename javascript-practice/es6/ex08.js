/*
class Rect

*/
class Rect {
    constructor(w,h){
        this.w = w;
        this.h = h;
    }
    draw(){
        console.log(`Rect(w=${this.w},h=${this.h})를 그렸습니다.`);
    }
}
// test
const rect1 = new Rect(10,20);
const rect2 = new Rect(100,200)
;

rect1.draw();
rect2.draw();
/*
    cf.생성자 함수 prototype
*/
const Circle = function(x,y,r){
    this.x = x;
    this.y = y;
    this.r = r;
}

Circle.prototype.draw = function(){
    console.log(`Circle(x=${this.x},y=${this.y},r=${this.r})을 그렸습니다.`)
}

//test
const circle1 = new Circle(10,10,10);
const circle2 = new Circle(100,100,10);

circle1.draw();
circle2.draw();

/*
extends
*/
class Shape {
    constructor(fillbgColor,lineColor){
        this.fillbgColor = fillbgColor;
        this.lineColor = lineColor;
    }

    draw(){
        console.log("그릴 수 없습니다");
    }
    area(){
        console.log("구할 수 없습니다");
    }
}

class Triangle extends Shape{
    constructor(w,h,fillbgColor,lineColor){
        super(fillbgColor,lineColor);
        this.w = w;
        this.h = h;
    }
    // @Overrider
    draw(){
        console.log(`Triangle(w=${this.w},h=${this.h},fillbgColor=${this.fillbgColor},lineColor=${this.lineColor})사각형을 그렸습니다`);
    }
}
const s = new Triangle(10,10,'red','black');
s.draw();




