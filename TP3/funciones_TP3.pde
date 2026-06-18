int pos=400;
int cantidadCuad=25;
int cantidadCuad2=18;
int cantElipse=25;
int tamCelda =0 ;
int tamCelda2 =0 ;

float naranjaR = 211;
float naranjaG = 95;
float naranjaB = 0;

float verde1 = 193;
float verde2 = 229;
float verde3 = 48;

boolean colorBrilloN =false;
float cuadraditos = 0;





void fondo() {
  noStroke();
  for (int y=0; y<cantidadCuad; y++) {
    for (int i=0; i<8; i++) {
      fill(42 + i*14, 55 + i*14, 96 + i*14);
      rect( 688+i*tamCelda, y*tamCelda, tamCelda, tamCelda);
    }
  }
  for (int y=0; y<10; y++) {
    for (int i=0; i<25; i++) {
      fill(46 + y*18, 55 + y*18, 104 + y*18);
      rect(400 + i*tamCelda, 288 + y*tamCelda, tamCelda, tamCelda);
    }
  }

  for (int y=0; y<4; y++) {
    for (int i=0; i<8; i++) {
      fill(70+ i*20, 75+i*20, 160+i*20 );
      rect(720+i*tamCelda, 272 + y*tamCelda, tamCelda, tamCelda);
    }
  }

  for (int y=0; y<4; y++) {
    for (int i=0; i<4; i++) {
      fill(85+ i*20, 100+i*20, 150+i*20 );
      rect(736+i*tamCelda, 289 + y*tamCelda, tamCelda, tamCelda);
    }
  }
}

void fondo2() {
  noStroke();
  for (int o=0; o<cantidadCuad2; o++) {
    for (int x=0; x<cantidadCuad2; x++) {

      float distNaranja = dist(x, o, 6, 6);
      if (distNaranja <= 10) {

     /*   float r;
        float g;
        float b;

        if (!colorBrilloN) {

          r = map(distNaranja, 0, 7, naranjaR, 100);
          g = map(distNaranja, 0, 7, naranjaG, 52);
          b = map(distNaranja, 0, 7, naranjaB, 55);
        } else {

          r = map(distNaranja, 0, 7, 193, 100);
          g = map(distNaranja, 0, 7, 229, 52);
          b = map(distNaranja, 0, 7, 48, 55);
        }*/
         if (!colorBrilloN) {
         fill(lerpColor(color(naranjaR,naranjaG,naranjaB),color(100,52,55),distNaranja/7));
         }else{
        fill(lerpColor(color(193,229,48),color(100,52,55),distNaranja/7));}

        //fill(r, g, b);
      } 
    
    
    
      rect( 400+ x*tamCelda, o*tamCelda, 16, 16);
    }
  }

  for (int o=0; o<cantidadCuad2; o++) {
    for (int x=0; x<6; x++) {

      fill(75- x*5, 55-x*2, 63-x*2);
      rect(592+ x*tamCelda, o*tamCelda, 16, 16);
    }
  }
  for (int o=0; o<5; o++) {
    for (int x=0; x<cantidadCuad2-3; x++) {

      fill(75- o*5, 55-o*2, 63-o*2);
      rect(400+ x*tamCelda, 208+ o*tamCelda, 16, 16);
    }
  }
  for (int x=0; x<cantidadCuad2; x++) {
    fill(99- x*3, 57-x*1, 55);
    rect(400+ x*tamCelda, 0*tamCelda, 16, 16);
  }
}




color colorcito(float posX, float posY) {


  float r= map(posX, 0, 25, 139, 62);
  float g= map(posX, 0, 25, 159, 80);
  float b= map(posX, 0, 25, 253, 186);


  if (posX < 8) {

    r= map(posX, 0, 7, 139, 37);
    g= map(posX, 0, 7, 159, 44);
    b= map(posX, 0, 7, 253, 98);
  }
  if (posY < 8) {

    r= map(posY, 0, 7, 139, 37);
    g= map(posY, 0, 7, 159, 44);
    b= map(posY, 0, 7, 253, 98);
  }
  if (posX < 8 || posY < 8) {

    float azul = min(posX, posY);

    r= map(azul, 0, 7, 139, 37);
    g= map(azul, 0, 7, 159, 44);
    b= map(azul, 0, 7, 253, 98);
  }
  if (posX >= 8 && posY >= 8) {

    float verde = dist(posX, posY, 18, 18);

    if (verde < 2) {

      r = verde1;
      g = verde2;
      b = verde3;
    } else if (verde < 5) {

      r = map(verde, 2, 5, verde1, 95);
      g = map(verde, 2, 5, verde2, 113);
      b = map(verde, 2, 5, verde3, 96);
      
    } else if (verde < 15) {

      r = map(verde, 5, 9, 95, 59);
      g = map(verde, 5, 9, 113, 85);
      b = map(verde, 5, 9, 96, 86);
    }
  }

  return color(r, g, b);
}






void grilla1() {
  for (int elipsesY=0; elipsesY<cantElipse; elipsesY++) {
    for (int elipsesI=0; elipsesI<cantElipse; elipsesI++) {

      fill (colorcito(elipsesI, elipsesY));
      float distan = dist(elipsesI, elipsesY, 12, 12);
      float tam = map(distan, 0, 12, 10.5, 12.5);

      ellipse(pos+elipsesI*16, 8+elipsesY*16, tam, tam);
    }
  }
}




void grilla2() {

   for (int cuadraditosY=0; cuadraditosY<11; cuadraditosY++) {
    for (int cuadraditosI=0; cuadraditosI<11; cuadraditosI++) {

      int x1 = cuadraditosI + 7;
      int y1 = cuadraditosY + 7;

      fill(colorcito(x1, y1));

      float x = 506.5 + cuadraditosI*16;
      float y = 114.5 + cuadraditosY*16;

      pushMatrix();

      translate(x + 5.5, y + 5.5);
      rotate(cuadraditos);

      rectMode(CENTER);
      rect(0, 0, 11, 11);

      popMatrix();
    }
  }
}




void interaccionCuadraditos() {
 if(mouseX >= 400 && mouseX < 600){

    cuadraditos = radians(-15);

  } else if(mouseX >= 600){

    cuadraditos = radians(15);

  }
}


void interaccionBrillo() {

  float d = dist(mouseX, mouseY, 496, 96);

  if (d < 100) {

    naranjaR = random(50, 255);
    naranjaG = random(50, 255);
    naranjaB = random(50, 255);
    colorBrilloN = !colorBrilloN;
  }
}




void interaccionBrillo2() {

  float d = dist(mouseX, mouseY, 696, 296);

  if (d < 80) {

    verde1 = random(50, 255);
    verde2 = random(50, 255);
    verde3 = random(50, 255);
  }
}

void resetear(){
  if(key == 'r' || key =='R'){
  cuadraditos = 0;
  }
  
}
