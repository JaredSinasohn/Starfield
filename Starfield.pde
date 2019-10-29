Particle[] bob;
void setup()
{
	size(400,400);
	bob = new Particle[1000];
	for(int i = 0; i<bob.length; i++){
		bob[i] = new Particle(200, 200);
	}
}
void draw()
{
	background(0);
	for(int i = 0; i<bob.length; i++){
		bob[i].move();
		bob[i].show();
	}
}
class Particle
{
	double mySpeed, myX, myY, myAngle;
	Particle(int x, int y){
		mySpeed = Math.random()*2;
		myAngle = Math.random()*2*Math.PI;
		myX = x;
		myY = y;
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
		System.out.println(myX + "," + myY);
	}
}

//class OddballParticle extends Particle //inherits from Particle
{
	//your code here
}


