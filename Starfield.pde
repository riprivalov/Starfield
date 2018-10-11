NormalParticle [] lines;
void setup()
{
	size(700,700);
  	lines = new	NormalParticle[100];	
  	for(int i = 0; i<lines.length; i++)
  		lines[i] = new NormalParticle();

}
void draw()	

{
	 background(0);
	for(int i =0; i<lines.length; i++){
		lines[i].show();
	}
}
class NormalParticle	
{
	int myX, myY;
	NormalParticle(){
		int myX = (int)(Math.random()*700);
		int myY = (int)(Math.random()*700);
	}
	void show(){
		fill(255,255,255);
		ellipse(myX,myY,10,10);
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

