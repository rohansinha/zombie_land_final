void setup()
{
  size(800, 600);
  smooth();
  noStroke();

  //**********Stuff to be used on multiple screens**********\\
  score = 0;
  //*****Images
  BackA = loadImage("Images/Multiple Screen/back.gif");
  BackA.resize(150, 39);
  mainMenuA = loadImage("Images/Multiple Screen/back.gif");
  mainMenuA.resize(100, 26);
  BeginGameA = loadImage("Images/Multiple Screen/startgame.gif");
  BeginGameA.resize(150, 39);
  BackB = loadImage("Images/Multiple Screen/back.png");
  BackB.resize(150, 39);
  mainMenuB = loadImage("Images/Multiple Screen/back.png");
  mainMenuB.resize(100, 26);
  BeginGameB = loadImage("Images/Multiple Screen/startgame.png");
  BeginGameB.resize(150, 39);
  wand = loadImage("Images/Multiple Screen/wand.png");
  wand.resize(147, 249);
  wand2 = loadImage("Images/Multiple Screen/wandGlow.png");
  wand2.resize(147, 249);

  //*****Fonts
  scoreBar = loadFont("AcademyEngravedLetPlain-48.vlw");

  frameRate(fr);
}
