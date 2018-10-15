NormalParticle [] lines;
void setup()
{
	size(700,700);
  	lines = new	NormalParticle[200];	
  	for(int i = 0; i<lines.length; i++)
  		lines[i] = new NormalParticle();

}
void draw()	
{
	background(0);
	for(int i =0; i<lines.length; i++){
		lines[i].show();
	}
	if(mousePressed){
		for(int i =0; i<lines.length; i++){
			lines[i].move();
		}
	}
}
class NormalParticle	
{
	double x, y, speed, angle;
	int myX, myY;
	NormalParticle(){
		myX =350;
		myY =350;
		speed=((Math.random())*10+1);
		angle=(Math.random()*Math.PI*2);
		myX = (int)(Math.random()*700)-350;
		myY = (int)(Math.random()*700)-350;
	}
	void move(){
	x= x+Math.cos(angle)*speed;
	y= y+Math.sin(angle)*speed;
}
	void show(){
		noStroke();
		fill(255,255,255);
		ellipse((float)(x+(350+myX)),(float)(y+(350+myY)),10,10);
	}

}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

