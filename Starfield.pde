NormalParticle [] lines;
void setup()
{
	size(700,700);
  	lines = new	NormalParticle[1000];	
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
		myX = (int)(Math.random()*700)-350;
		myY = (int)(Math.random()*700)-350;
		speed=((Math.random())*10+1);
		angle=(Math.random()*Math.PI*2);
		/*if (myX >0 && myY>0){
			angle=(Math.random()*Math.PI*1/2);
		}
		if (myX <0 && myY>0){
			angle=(Math.random()*Math.PI*1/2)+(Math.PI)*1/2;
		}
		if (myX <0 && myY<0){
			angle=(Math.random()*Math.PI*1/2)+Math.PI;
		}
		if (myX >0 && myY<0){
			angle=(Math.random()*Math.PI*1/2)+(Math.PI)*3/2;
		}*/
	}
	void move(){	
	x= x+Math.cos(angle)*speed;
	y= y+Math.sin(angle)*speed;
	if (myX>width || myX<0 || myY>height|| myY<0){
		myX=0;
		myY=0;

	}
}
	void show(){
		noStroke();
		fill(255,255,255);
		ellipse((float)(x+(350+myX)),(float)(y+(350+myY)),4,4);
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

