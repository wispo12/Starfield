Firework f = new Firework();
Firework[] AmountOfSparks = new Firework[300];
void setup(){
size(700,700);
noStroke();
for(int i = 10; i < AmountOfSparks.length; i++){
AmountOfSparks[i] = new Firework();
}
for(int i = 0; i < 10; i++){
AmountOfSparks[i] = new Firework2();
}
}
void draw(){
background(0,0,0);
fill(49,99,0);

f.show();
f.explosion();
for(int i = 0; i < AmountOfSparks.length; i++){
AmountOfSparks[i].show();
AmountOfSparks[i].explosion();}
}



class Firework{
double myX,myY, mySpeed, mySize,myColor1,myColor2,myColor3, myOpacity;
double myAngle;

Firework(){
myX = 350;
myY = 350;
mySize = (int)(Math.random()*40) + 20;
mySpeed = (Math.random()*2) + 1;
myColor1 = (int)(Math.random()*200 + 100);
myColor2 = (int)(Math.random()*200 + 100);
myColor3 = (int)(Math.random()*200 + 100);
myOpacity = (int)(Math.random()*50)+100;
 myAngle=(Math.random()*2)*Math.PI;
}
void show(){
fill((int)myColor1,(int)myColor2,(int)myColor3, (float)myOpacity);
ellipse((float)myX,(float)myY, (float)mySize, (float)mySize);
}


void explosion()
{
  myX=myX+Math.cos(myAngle)*mySpeed;
    myY=myY+Math.sin(myAngle)*mySpeed;
}
void mousePressed()
   {
   redraw();
   }
}
class Firework2 extends Firework{
Firework2(){
myX = 350;
myY = 350;
myColor1 = (int)(Math.random()*50) + 200;
myColor2 = (int)(Math.random()*50) + 200;
myColor3 = (int)(Math.random()*50) + 200;
mySpeed = 0.5;
myOpacity = (int)(Math.random()*60) + 160;

mySize = (int)(Math.random()*40) + 120;
}
}
