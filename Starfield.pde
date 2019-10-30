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
		myX = (int)(Math.random()*5)-3+myX;
		myY = (int)(Math.random()*5)-3+myY;
	}
	void show(){
		stroke(0,0,255);
		fill(0,0,255);
		rect((float)myX,(float)myY,10,10);
	}
}


