PImage fondo;
PImage portada;
PImage patosPreocupados;
PImage patosPreocupados2;
PImage nacimientoPatitos;
PImage patitoFeoCascaron;
PImage patosViendoPatito;
PImage patosDiscutiendo;
PImage patitoReflejo;
PImage patitoCulpable;
PImage patoJuguete;
PImage jugueteAtacando;
PImage patitoLlorando;
PImage patitosViendoPatito;
PImage patitosFelices;
PImage familiaCisne;
PImage finalFeliz;

PFont texto;
float transicionTexto = 0;
float transicionTexto1 = 0;
float transicionTexto2 = 0;
float transicionTexto3 = 0;

float x1 = 0;
float x2 = 2000;
float velocidad=2;
float velDeFondo=0.5;

int imagenQuieta=0;
int imagenQuieta2=0;

int posOpuesta=930;
int dir=2;
int posX=0;
int botonX = 220;
int botonY = 400;
int ancho = 200;
int alto = 50;
int botonX2=220;
int botonY2 = 100;
int ancho2 =200;
int alto2= 50;

int tiempoPantalla7;
int tiempoPantalla6;
int tiempoPantalla5;
int tiempoPantalla4;
int tiempoPantalla3;
int tiempoPantalla2;
int tiempoPantalla1;
int pantalla = 0;


int posXNac = 0;
int posXcasc=960;
int imagenQuietaNac = 0;
int imagenQuietaCasc = 0;
int dirNac=2;

int posYViendo= 0;
int imagenQuietaViendo=0;
int dirViendo=2;

int posYDisc= 0;
int posXDisc=460;
int imagenQuietaDisc=0;
int dirDisc=2;

int posYRef=0;
int imagenQuietaRef=0;
int dirRef=2;

float patitoRefTrans;
float patitoCulpTrans;

int posCulp= 0;
int imagenQuietaCulp=0;
int dirCulp= -2;

int posXJug=0;
int imagenQuietaJug=0;
int dirJug=2;

int posXAtac=950;
int imagenQuietaAtac=0;
int dirAtac=2;

int posXLloran=0;
int imagenQuietaLloran=0;
int dirLloran=2;

int posXCisnes=950;
int imagenQuietaCisnes=0;

int posXFamilia=0;
int imagenQuietaFamilia=0;
int dirFamilia=2;

int posXFelices=950;
int ImagenQuietaFelices=0;

float anchoFinal=420;
float altoFinal=400;


void setup() {
  size(640, 480);
  fondo=loadImage("fondo.png");
  portada=loadImage("portada.png");
  texto = loadFont("Garamond-Italic-32.vlw");
  textFont(texto);

  patosPreocupados=loadImage("patosPreocupados.png");
  patosPreocupados2=loadImage("patosPreocupados2.png");
  nacimientoPatitos=loadImage("nacimientoPatitos.png");
  patitoFeoCascaron=loadImage("patitoCascaron.png");
  patosViendoPatito=loadImage("patosViendoPatito.png");
  patosDiscutiendo=loadImage("patosDiscutiendo.png");
  patitoReflejo=loadImage("patitoViendoSuReflejo.png");
  patitoCulpable=loadImage("patitoCulpable.png");
  patoJuguete=loadImage("patoDeJuguete.png");
  jugueteAtacando=loadImage("jugueteAtacando.png");
  patitoLlorando=loadImage("patitoFeoLlorando.png");
  patitosViendoPatito=loadImage("patitosViendoAPatito.png");
  patitosFelices=loadImage("patitosFelices.png");
  familiaCisne=loadImage("madreYFamilia.png");
  finalFeliz=loadImage("finalFeliz.png");
}


void draw() {

  if (pantalla == 0) {
    fondoAtras();
    portada();
  }

  if (pantalla==1) {
    fondoAtras();
    texto1();
    imagen1();
    imagen2();
    siguientePantalla1();
  }
  if (pantalla==2) {
    fondoAtras();
    texto2();
    imagen3();
    imagen4();
    siguientePantalla2();
  }

  if (pantalla==3) {
    fondoAtras();
    texto3();
    imagen5();
    imagen6();
    siguientePantalla3();
  }
  if (pantalla==4) {
    fondoAtras();
    texto4();
    imagen7y8();
    siguientePantalla4();
  }

  if (pantalla==5) {
    fondoAtras();
    texto5();
    imagen9();
    imagen10();
    siguientePantalla5();
  }
  if (pantalla==6) {
    fondoAtras();
    texto6();
    imagen11();
    imagen12();
    siguientePantalla6();
  }
  if (pantalla==7) {
    fondoAtras();
    texto7();
    imagen13();
    imagen14();
    siguientePantalla7();
  }
  if (pantalla==8) {
    fondoAtras();
    texto8();
    imagen15();
    botonResetear();
  }
}



void mousePressed() {
  if (mouseX > botonX && mouseX < botonX + ancho &&
    mouseY > botonY && mouseY < botonY + alto) {
    pantalla = 1;
  }

  if (mouseX > botonX2 && mouseX < botonX2 + ancho2 &&
    mouseY > botonY2 && mouseY < botonY2 + alto) {
    pantalla = 0;
    valorOriginal();
  }
}
