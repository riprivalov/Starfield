Particle [] lines;
void setup()
{
	size(700,700);
  	lines = new	Particle[1000];	
  	for(int i = 0; i<lines.length; i++)
  		if (i%10 == 0){
  			lines[i] = new JumboParticle();
  		}else if (i%333== 0){
  			lines[i] = new OddballParticle();
  		} else if(0==0){
  			lines[i] = new NormalParticle();
  		}

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
class NormalParticle implements Particle	
{
	double x, y, speed, angle;
	int myX, myY;
	NormalParticle(){
		myX = (int)(Math.random()*700)-350;
		myY = (int)(Math.random()*700)-350;
		speed=((Math.random())*10+1);
		angle=(Math.random()*Math.PI);
		if (myX >0 && myY>0){
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
		}
	}
	public void move(){	
	x= x+Math.cos(angle)*speed;
	y= y+Math.sin(angle)*speed;
	/*if (myX>width || myX<0 || myY>height|| myY<0){
		myX=0;
		myY=0;

		} */
	}
	public void show(){
		noStroke();
		fill(255,255,255);
		ellipse((float)(x+(350+myX)),(float)(y+(350+myY)),3,3);
	}

}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle
{

 	int myX, myY, colornumber, decimal;
	OddballParticle()
 	{
 		colornumber = (int)(Math.random()*3)+1;
 		decimal = (int)(Math.random()*601)-300;
 		myX = 350;
 		myY = 350;
 	}
 	public void move()
 	{
 		myX = myX +(int)(Math.random()*11)-5;
    	myY = myY +(int)(Math.random()*11)-5;
 	}
 	public void show()
	  {
  	if (colornumber == 1) {
  		fill(245,44,15);
  		ellipse(myX + decimal,myY+100,15,15);
  	}
  	if (colornumber == 2) {
  		fill(40,84,174);
  		ellipse(myX + decimal,myY,15,15);
  	}
  	if (colornumber == 3) {
  		fill(255,255,255);
  		ellipse(myX + decimal,myY-100,15,15);
  	}
	}
}
class JumboParticle extends NormalParticle
{
	JumboParticle(){

	}
	public void show(){
		ellipse((float)(x+(350+myX)),(float)(y+(350+myY)),8,8);
	}
}

