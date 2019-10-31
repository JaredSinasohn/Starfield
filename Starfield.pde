Particle[] bob;
OddballParticle joe;
void setup()
{
	size(400,400);
	bob = new Particle[1000];
	for(int i = 0; i<bob.length; i++){
		bob[i] = new Particle();
	}
	joe = new OddballParticle();
	frameRate(60);
}
void draw()
{
	background(0);
	for(int i = 0; i<bob.length; i++){
		bob[i].move();
		bob[i].show();
	}
	joe.move();
	joe.show();
	/*if(frameCount%60 == 0){
		for(int j = 0; j<bob.length; j++){
			bob[j] = new Particle();
			bob[j].move();
			bob[j].show();
		}
	}*/
}
void mousePressed(){
	for(int i = 0; i<bob.length; i++){
		bob[i] = new Particle();
	}
}
class Particle
{
	double mySpeed, myX, myY, myAngle;
	Particle(){
		mySpeed = Math.random()*2;
		myAngle = Math.random()*2*Math.PI;
		myX = 200;
		myY = 200;
	}
	void move(){
		myX += (mySpeed*Math.cos(myAngle));
		myY += (mySpeed*Math.sin(myAngle));
		mySpeed+= mySpeed*.01;
	}
	void show(){
		stroke(255, 150);
		fill(255,150);
		ellipse((float)myX, (float)myY, 1,1);
		if((myX<0||myX>400)||(myY<0||myY>400)){
			myX=200;
			myY=200;
			mySpeed = Math.random()*.5;
			myAngle = Math.random()*2*Math.PI;
		}
		myX += (mySpeed*Math.cos(myAngle));
		myY += (mySpeed*Math.sin(myAngle));
	}
	double getmyX(){
		return myX;
	}
	double getmyY(){
		return myY;
	}
}
class OddballParticle extends Particle //inherits from Particle
{
	void move(){
		myX = (int)(Math.random()*5)-2+myX;
		myY = (int)(Math.random()*5)-2+myY;
	}
	void show(){
		stroke(0,0,255);
		fill(0,0,255);
		rect((float)myX,(float)myY,10,10);
	}
}


