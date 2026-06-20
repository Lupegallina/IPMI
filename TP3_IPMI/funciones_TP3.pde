int pos=400; //<>// //<>//
int cantidadCuad=25;
int cantidadCuad2=17;
int cantElipse=26;
int tamCelda =0 ;


float naranjaR =211;
float naranjaG =95;
float naranjaB =0;
float verde1 =193;
float verde2 =229;
float verde3  =48;
float azul1 =139;
float azul2 =159;
float azul3 =253;
float azulR =37;
float azulG =44;
float azulB =98;
float verdeR=95;
float verdeG=113;
float verdeB=96;
float verdecito1=59 ;
float verdecito2=85 ;
float verdecito3=86 ;
float fondoAz=42;
float fondoAzu=55;
float fondoAzul=96;
float fondoAzulcito=78;
float fondoAzulcit=91;
float fondoAzulci=132;
float fondo2marron=60;
float fondo2marro=55;
float fondo2marr=63;
float fondo2marroncito=99;
float fondo2marroncit=57;
float brilliFondo2=100;
float sobranteBrilli=75;
float brillitoFondo2=52;
float sobranteBrillito=63;


float cuadraditos =0;
boolean ciculoCuadrado= false;




void fondo() {
  noStroke();
  for (int y=0; y<cantidadCuad; y++) {
    for (int i=0; i<8; i++) {
      fill(fondoAz + i*14, fondoAzu+ i*14, fondoAzul + i*14);
      rect( 678+i*tamCelda, y*tamCelda, tamCelda, tamCelda);
    }
  }
  for (int y=0; y<10; y++) {
    for (int i=0; i<19; i++) {
      fill(fondoAz + y*18, fondoAzu + y*18, fondoAzul + y*18);
      rect(400 + i*tamCelda, 278 + y*tamCelda, tamCelda, tamCelda);
    }
  }

  for (int y=0; y<7; y++) {
    for (float i=0; i<3; i++) {
      fill(fondoAzulcito+ y*15, fondoAzulcit+y*15, fondoAzulci+y*15 );
      rect(704+i*tamCelda, 294 + y*tamCelda, tamCelda, tamCelda);
    }
  }
}

void fondo2() {
  noStroke();
  for (int o=0; o<cantidadCuad2; o++) {
    for (int x=0; x<cantidadCuad2; x++) {

      float distNaranja = dist(x, o, 6, 6);
      if (distNaranja <= 7) {

        float rN=map(distNaranja, 0, 7, naranjaR, brilliFondo2);
        float gN=map(distNaranja, 0, 7, naranjaG, brillitoFondo2);
        float bN=map(distNaranja, 0, 7, naranjaB, fondo2marro);

        fill(rN, gN, bN);
      } else {

        fill(sobranteBrilli, fondo2marro, sobranteBrillito);
      }

      rect(400+x*tamCelda, o*tamCelda, 16, 16);
    }
  }

  for (int j=0; j<cantidadCuad2; j++) {
    for (int x=0; x<5; x++) {

      fill(fondo2marron- x*5, fondo2marro-x*2, fondo2marr-x*2);
      rect(596+ x*tamCelda, j*tamCelda, 16, 16);
    }
  }
  for (int j=0; j<5; j++) {
    for (int x=0; x<cantidadCuad2-3; x++) {

      fill(fondo2marron- j*5, fondo2marro-j*2, fondo2marr-j*2);
      rect(400+ x*tamCelda, 200+ j*tamCelda, 16, 16);
    }
  }
  for (int x=0; x<cantidadCuad2; x++) {
    fill(fondo2marroncito- x*3, fondo2marroncit-x*1, fondo2marro);
    rect(400+ x*tamCelda, 0*tamCelda, 16, 16);
  }
}


color colorcito(float posX, float posY) {


  float r=0;
  float g=0;
  float b=0;

  if (posX < 8 || posY < 8) {

    float azul;

    if (posX < posY) {
      azul =posX;
    } else {
      azul =posY;
    }
    r= map(azul, 0, 7, azul1, azulR);
    g= map(azul, 0, 7, azul2, azulG);
    b= map(azul, 0, 7, azul3, azulB);
  }
  if (posX >= 8 && posY >= 8) {

    float verde =dist(posX, posY, 18, 18);

    if (verde < 2) {

      r =verde1;
      g =verde2;
      b =verde3;
    } else if (verde < 5) {

      r=map(verde, 2, 5, verde1, verdeR);
      g=map(verde, 2, 5, verde2, verdeG);
      b=map(verde, 2, 5, verde3, verdeB);
    } else if (verde < 15) {

      r=map(verde, 5, 9, verdeR, verdecito1);
      g=map(verde, 5, 9, verdeG, verdecito2);
      b=map(verde, 5, 9, verdeB, verdecito3);
    }
  }

  return color(r, g, b);
}

void grilla1() {
  
  for (int elipsesY=0; elipsesY<cantElipse; elipsesY++) {
    for (int elipsesI=0; elipsesI<cantElipse; elipsesI++) {

      fill(colorcito(elipsesI, elipsesY));

      float distan= dist(elipsesI, elipsesY, 12, 12);
      float tam= map(distan, 0, 12, 10.5, 12.5);

      float x= pos + elipsesI*16;
      float y= 8 + elipsesY*16;

      if (ciculoCuadrado) {

        rectMode(CENTER);
        rect(x, y, tam, tam);

      } else {

        ellipse(x, y, tam, tam);
      }
    }
  }
}

void grilla2() {

  for (int cuadraditosY=0; cuadraditosY<11; cuadraditosY++) {
    for (int cuadraditosI=0; cuadraditosI<11; cuadraditosI++) {

      int x1=cuadraditosI + 7;
      int y1=cuadraditosY + 7;

      fill(colorcito(x1, y1));

      float x=506.5 + cuadraditosI*16;
      float y=114.5 + cuadraditosY*16;

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
  if (mouseX >=400 && mouseX < 600) {

    cuadraditos =radians(-15);
  } else if (mouseX >=600) {

    cuadraditos = radians(15);
  }
}


void interaccionBrillo() {

  float d = dist(mouseX, mouseY, 496, 96);

  if (d < 100) {

    naranjaR =random(50, 255);
    naranjaG =random(50, 255);
    naranjaB =random(50, 255);
  }
}




void interaccionBrillo2() {

  float d = dist(mouseX, mouseY, 696, 296);

  if (d < 80) {

    verde1 =random(50, 255);
    verde2 =random(50, 255);
    verde3 =random(50, 255);
  }
}


void resetear() {
  if (key == 'r' || key =='R') {
    cuadraditos = 0;
    naranjaR =211;
    naranjaG =95;
    naranjaB =0;

    verde1 =193;
    verde2 =229;
    verde3 =48;
    ciculoCuadrado= false;
  }
}

void interaccionCirculito() {

  for (int elipsesY=0; elipsesY<cantElipse; elipsesY++) {
    for (int elipsesI=0; elipsesI<cantElipse; elipsesI++) {

      float x= pos + elipsesI*16;
      float y= 8 + elipsesY*16;

      float distan= dist(elipsesI, elipsesY, 12, 12);
      float tam= map(distan, 0, 12, 10.5, 12.5);

      if (dist(mouseX, mouseY, x, y) < tam/2) {

        ciculoCuadrado = !ciculoCuadrado;
        return;
      }
    }
  }
}
