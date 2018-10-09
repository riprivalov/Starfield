NormalParticle [] lines
void setup()
{
	size(700,700);
  	background(0);
  	lines = new	NormalParticle[100];	
  	for(int = 0; i<lines.length; i++)
  		lines[i] = new NormalParticle();

}
void draw()	
{
	for(int=i; i<lines.length; i++){
		lines[i].move();
		lines[i].show();
	}
}
class NormalParticle
{
	int x, y;
	NormalParticle(){
		x=myX;
		y=myY;
	}
	void show(){

		ellipse((int)Math.random()*700)
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

