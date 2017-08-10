import ddf.minim.*;        
AudioSample sound;


int acceleration = 5;

int xLoc1 = 267;
int yLoc1 = 221;

PImage catPic;

int xLoc2 = 281; //281
int yLoc2 = 220; //220


void setup()
{
  size(500, 500);
  catPic = loadImage("evil_cat.jpg");
  catPic.resize(500, 500);  // to match your size
  background(catPic);
  Minim minim = new Minim(this);        
  sound = minim.loadSample("explo.wav");
}

void draw()
{
  if (xLoc1 > 500)
  {
    background(catPic);
    xLoc1 = 267;
    yLoc1 = 221;



    xLoc2 = 281; //281
    yLoc2 = 220; //220
  }

  fill(#FF0000);
  ellipse(xLoc1, yLoc1, 10, 10);

  fill(#FF0000);
  ellipse(xLoc2, yLoc2, 10, 10);

  if (mousePressed)
  {
    keyPressed();
  }
}

void keyPressed()
{
  noStroke();
  xLoc1 = xLoc1 + acceleration; //xLoc1++
  yLoc1 = yLoc1 + acceleration; //yLoc1++

  xLoc2 =  xLoc2 + acceleration; //xLoc2++
  yLoc2 = yLoc2 + acceleration; //yLoc2++
  if (acceleration == 5)
  {
    sound.trigger();
  }
}