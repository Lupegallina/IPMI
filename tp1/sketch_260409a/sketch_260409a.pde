PImage miImagen;

void setup(){
  size(800,400);
  miImagen = loadImage("esculturagriega.png");
 }
 
void draw(){ 
  background(200);
  image(miImagen, 0, 0, 400, 400);
  
  rect(490,190, 220,20);
  rect(470,190, 12,60);
  
   rect(700,80, 50,12);
   rect(650,40, 10,60);
   rect(650,70, 60,140);
  
   
   
  triangle(480,190,497,250,570,190);
  triangle(640,190,670,250,730,190); 
  
  rect(497,250, 15,110);
  rect(670,250, 15,110);
  rect(460,355, 235,20);
  
  
  textSize(20);
  text((400 + mouseX) + "-" + mouseY, mouseX,mouseY);
  
}
  
