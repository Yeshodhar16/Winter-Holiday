
color Tree;

float[] zX= new float[1000];
float[] zY= new float[1000];

float[] zX1= new float[1000];
float[] zY1= new float[1000];

import processing.sound.*;
SoundFile song;
void setup()
{
  song= new SoundFile(this,"Stargazing.mp3");
  song.play();
  fullScreen();
  background(0);
  textSize(15);
  noStroke();
  // Tree();

  colorMode(HSB, 360, 255, 255);

  for (int i=0; i<1000; i++)
  {
    zX[i]=random(width);
    zY[i]=random(-300, 0);
  }
}

void Tree()
{
  Tree= color(random(360), random(255), random(255));
  //fill(27,200,0);
  fill(Tree);
  triangle(width/2, height/8, width/2.4, height/3, width/1.7, height/3);
  triangle(width/2, height/5, width/2.4, height/2.25, width/1.7, height/2.25);
  triangle(width/2, height/3.5, width/2.4, height/1.7, width/1.7, height/1.7);
  fill(#674000);
  rect(width/2.1, height/1.7, 100, 200);

  if (keyPressed)
  {
    if (key == ' ')
    {
      Tree = color(random(360), random(255), random(255));
    }
  }
}

void draw()
{
  background(0);
  Tree();
  fill(255);
  for (int i=0; i<1000; i++)
  {
    textSize(10);
    text('z', zX[i], zY[i]);
    zY[i]+=random(1, 5);
    zX[i]+=random(-5, 5);
    if (zY[i]>height)
    {
      zY[i]=random(500);
    }
  }


  for (int i=0; i<1000; i++)
  {
    if (zY[i]>height/3)
    {
      textSize(10);
      text('z', zX[i], zY[i]);
      zY1[i]+=random(1, 5);
      zX1[i]+=random(-5, 5);
      if (zY[i]>height)
      {
        zY[i]=random(500);
      }
    }
  }
}