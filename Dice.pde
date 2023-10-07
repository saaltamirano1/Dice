Die bob;

int dieTotal = 0;

void setup()
{
  size(500, 500);
  textAlign(CENTER);
  noLoop();
}

void draw()
{
  for (int y = 0; y<=451; y = y + 50) {
    for (int x = 0; x<=451; x = x + 50) {
      Die bob = new Die(x, y);
      bob.roll();
      bob.show();
      if (bob.dieNum==1) {
        dieTotal = dieTotal+1;
      }
      if (bob.dieNum==2) {
        dieTotal = dieTotal+2;
      }
      if (bob.dieNum==3) {
        dieTotal = dieTotal+3;
      }
      if (bob.dieNum==4) {
        dieTotal = dieTotal+4;
      }
      if (bob.dieNum==5) {
        dieTotal = dieTotal+5;
      }
      if (bob.dieNum==6) {
        dieTotal = dieTotal+6;
      }
    }
  }
     System.out.println(dieTotal);
     fill(0,0,0);
     textSize(27);
     text("Die Total = "+ dieTotal,405,400);
      dieTotal = 0;
}

void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int dieNum, mySize, myX, myY;

  Die(int x, int y)
  {
    myX = x;
    myY = y;
    mySize = 50;
  }
  void roll()
  {
    dieNum = (int) ((Math.random()*6)+1);
    System.out.println(dieNum);
  }
  void show()
  {
    fill(240,124,171);
    rect(myX, myY, 50, 50);
    if (dieNum == 1) {
      fill(255,193,224);
      ellipse(myX+25, myY+25, 5, 5);
    } else if (dieNum == 2) {
      fill(255,193,224);
      ellipse(myX+35, myY+25, 5, 5);
      ellipse(myX+15, myY+25, 5, 5);
    } else if (dieNum == 3) {
      fill(255,193,224);
      ellipse(myX+25, myY+15, 5, 5);
      ellipse(myX+15, myY+30, 5, 5);
      ellipse(myX+35, myY+30, 5, 5);
    } else if (dieNum == 4) {
      fill(255,193,224);
      ellipse(myX+15, myY+15, 5, 5);
      ellipse(myX+35, myY+15, 5, 5);
      ellipse(myX+15, myY+35, 5, 5);
      ellipse(myX+35, myY+35, 5, 5);
    } else if (dieNum == 5) {
      fill(255,193,224);
      ellipse(myX+15, myY+15, 5, 5);
      ellipse(myX+35, myY+15, 5, 5);
      ellipse(myX+15, myY+35, 5, 5);
      ellipse(myX+35, myY+35, 5, 5);
      ellipse(myX+25, myY+25, 5, 5);
    } else {
      fill(255,193,224);
      ellipse(myX+15, myY+10, 5, 5);
      ellipse(myX+35, myY+10, 5, 5);
      ellipse(myX+15, myY+25, 5, 5);
      ellipse(myX+15, myY+40, 5, 5);
      ellipse(myX+35, myY+25, 5, 5);
      ellipse(myX+35, myY+40, 5, 5);
    }
  }
}
