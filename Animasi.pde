PImage img;
PImage[] harimau = new PImage[8];
int numHarimau = 6;
float[] harimauX = new float[numHarimau];
float[] harimauY = new float[numHarimau];
int[] harimauFrame = new int[numHarimau];
float spacing;

void setup() {
  size(1000, 600);
  smooth();
  img = loadImage("hutan.png");
  harimau[0] = loadImage("harimau0.gif");
  harimau[1] = loadImage("harimau1.gif");
  harimau[2] = loadImage("harimau2.gif");
  harimau[3] = loadImage("harimau3.gif");
  harimau[4] = loadImage("harimau4.gif");
  harimau[5] = loadImage("harimau5.gif");
  harimau[6] = loadImage("harimau6.gif");
  harimau[7] = loadImage("harimau7.gif");

  spacing = width / numHarimau;

  for (int i = 0; i < numHarimau; i++) {
    harimauX[i] = i * spacing;
    harimauY[i] = 400;
    harimauFrame[i] = int(random(8));
  }

  frameRate(10);
}

void draw() {
  image(img, 0, 0, width, height);

  for (int i = 0; i < numHarimau; i++) {
    image(harimau[frameCount % 8], harimauX[i], harimauY[i]);
    harimauX[i] -= 5;

    if (harimauX[i] < -200) {
      harimauX[i] = width + (i * spacing);
      harimauY[i] = 400;
    }
  }
}
