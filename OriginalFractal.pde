public int n = 50;
public void setup()
{
	size(500,500);
}
public void draw()
{

	frameRate(10);
	background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	translate(width/4,height/4);
	rotate(PI/4.0);
	fractal(width/2,height/2,n);
	if(n<800)
		n = n + 20;
	else		
		n=10;
}
public void fractal(float x, float y, float siz)
{
	if(siz<10)
	{
		fill(0);
		stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		strokeWeight(2);
		rect(x,y,siz+100,siz+100);
		//triangle(x-siz/2,y+siz,x,y,x+siz/2,y+50);
		//triangle(x-siz/2+50,y+siz+50,x+50,y+50,x+siz/2+50,y+50);
	}
	else
	{
		fractal(x-siz/2,y-siz/2,siz/2.5);
		fractal(x+siz/2,y-siz/2,siz/2.5);
		fractal(x-siz/2,y+siz/2,siz/2.5);
		fractal(x+siz/2,y+siz/2,siz/2.5);
		fractal(x,y+siz/2,siz/2);
		fractal(x,y-siz/2,siz/2);
	}
}