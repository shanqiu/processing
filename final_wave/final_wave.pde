/* i used these codes http://www.openprocessing.org/sketch/17846 as  reference.
*/
float gratitude;
float yPos;
float wave=1;
void setup() {
  size(800, 600);
  smooth();
}
void draw() {
  background(30);
  noFill();
  gratitude=map(mouseX, 0, width, 0, 5);
  beginShape(POLYGON);
  for (float i=0; i<width; i=i+5) {  
    stroke(yPos, 200);  
    yPos = noise(1/width, 2*wave/height, i/width)*255;       
    curveVertex(i, yPos+height/2);
    //      println(gratitude);
    println(yPos);
  }
  endShape();
  textSize(15);
  fill(255);
  text(mouseX,width/2,height/10);
  wave=wave+gratitude;
}

