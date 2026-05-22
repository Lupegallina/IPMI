
void fondoAtras() {
  imageMode(CORNER);
  image(fondo, x1, 0);
  image(fondo, x2, 0);
  x1 -= velDeFondo;
  x2 -= velDeFondo;
  if (x1 <= -2000) {
    x1 = 2000;
  }
  if (x2 <= -2000) {
    x2 = 2000;
  }
}

void portada() {
  imageMode(CENTER);
  image(portada, 320, 240, 250, 350);
  fill(#EDC2D9);
  stroke(255);
  rect(botonX, botonY, ancho, alto, 10);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("Comenzar", 320, 435);
}



void texto1() {
  fill(0, 0, 0, 80);
  rect(20, 350, 600, 620);

  if (transicionTexto < 255) {
    transicionTexto += 5;
  }
  fill(255, transicionTexto);
  textSize(30);
  text("Había una vez una pareja, muy ansiosa por la llegada de sus patitos",
    110, 380, 380, 380);
}

void imagen1() {
  imageMode(CENTER);
  image(patosPreocupados, posX - 160, 200, 360, 280);

  if (posX<=350) {
    posX+=dir;
  }
  if (posX>=350 && imagenQuieta <120) {
    posX=350;
    imagenQuieta++;
  }
  if (imagenQuieta==120) {
    dir= -2;
    posX +=dir;
  }
}

void imagen2() {
  image(patosPreocupados2, posOpuesta, 200, 270, 215);

  if (posOpuesta>=510) {
    posOpuesta-=dir;
  }
  if (posOpuesta<=510 && imagenQuieta2 <120) {
    posOpuesta=510;
    imagenQuieta2++;
  }
  if (imagenQuieta2==120) {
    dir= +2;
    posOpuesta -=dir;
  }
}

void siguientePantalla1() {
  tiempoPantalla1++;
  if (tiempoPantalla1>=450) {
    pantalla=2;
    tiempoPantalla1=0;
  }
}




void texto2() {

  fill(0, 0, 0, 80);
  rect(20, 350, 600, 620);

  if (transicionTexto1 < 255) {
    transicionTexto1 += 5;
  }
  fill(255, transicionTexto1);
  textSize(30);
  text("Pasado el tiempo, los patitos nacieron. Estaban todos muy contentos!... hasta que el huevo más grande se abrió",
    90, 370, 480, 480);
}

void imagen3() {
  image(nacimientoPatitos, posXNac-350, 30, 370, 300);

  if (posXNac<=350) {
    posXNac+=dirNac;
  }
  if (posXNac>=350 && imagenQuietaNac <180) {
    posXNac=350;
    imagenQuietaNac++;
  }
  if (imagenQuietaNac==180) {
    dirNac= -2;
    posXNac +=dirNac;
  }
}

void imagen4() {
  image(patitoFeoCascaron, posXcasc, 185, 130, 170);

  if (posXcasc > 400 && imagenQuietaCasc == 0) {
    posXcasc -= 2;
  }
  if (posXcasc <= 400 && imagenQuietaCasc < 65) {
    posXcasc = 400;
    imagenQuietaCasc++;
  }
  if (imagenQuietaCasc >= 65) {
    posXcasc += 2;
  }
}

void siguientePantalla2() {
  tiempoPantalla2++;
  if (tiempoPantalla2>=450) {
    pantalla=3;
    tiempoPantalla2=0;
  }
}





void texto3() {
  fill(0, 0, 0, 80);
  rect(20, 350, 600, 620);

  if (transicionTexto2 < 255) {
    transicionTexto2 += 5;
  }
  fill(255, transicionTexto2);
  textSize(25);
  text("Los padres, disgustados, comenzaron a discutir viendo al patito tan feo y distinto a los hermanos... El padre se dio la vuelta y se fue, la madre hizo lo mismo pero con todos sus lindos patitos",
    45, 370, 560, 520);
}

void imagen5() {
  imageMode(CENTER);
  image(patosViendoPatito, 170, posYViendo-200, 280, 235);

  if (posYViendo<400 && imagenQuietaViendo ==0) {
    posYViendo+=dirViendo;
  }
  if (posYViendo == 400 && imagenQuietaViendo <120) {
    posYViendo=400;
    imagenQuietaViendo++;
  }
  if (imagenQuietaViendo>= 120) {
    dirViendo=-2;
    posYViendo-=2;
  }
}

void imagen6() {

  image(patosDiscutiendo, posXDisc, posYDisc-420, 320, 265);


  if (posYDisc<=600 && imagenQuietaDisc ==0) {
    posYDisc+=dirDisc;
  }
  if (posYDisc == 600 && imagenQuietaDisc <60) {
    posYDisc=600;
    imagenQuietaDisc++;
  }
  if (imagenQuietaDisc>= 60 && posYDisc == 600) {
    posXDisc++;
  }
}

void siguientePantalla3() {
  tiempoPantalla3++;
  if (tiempoPantalla3>=560) {
    pantalla=4;
    tiempoPantalla3=0;
  }
}




void texto4() {

  fill(0, 0, 0, 80);
  rect(20, 350, 600, 620);

  if (transicionTexto3 < 255) {
    transicionTexto3 += 5;
  }
  fill(255, transicionTexto3);
  textSize(30);
  text("El patito se quedó solo. Se miraba en un charquito de agua y (sin saber que este lo deformaba), culpaba a su reflejo. Se llamó a si mismo Patito Feo",
    50, 370, 550, 550);
}

void imagen7y8() {
  imageMode(CENTER);
  image(patitoReflejo, width/2, posYRef-100, 360, 360);
  if (posYRef<= 250 && imagenQuietaRef ==0) {
    posYRef+=dirRef;
  }
  if (posYRef == 250 && imagenQuietaRef <80) {
    posYRef=250;
    imagenQuietaRef++;
    if (imagenQuietaRef>= 80) {
      patitoReflejo= patitoCulpable;
    }
  }
}

void siguientePantalla4() {

  tiempoPantalla4++;
  if (tiempoPantalla4>=260) {
    pantalla=5;
    tiempoPantalla4=0;
  }
}




void texto5() {
  fill(0, 0, 0, 80);
  rect(20, 350, 600, 620);

  if (transicionTexto3 < 255) {
    transicionTexto3 += 5;
  }
  fill(255, transicionTexto3);
  textSize(30);
  text("Al rato Patito Feo encontró a quién creyó ser su nueva madre(un pato de juguete). Hasta que se dio cuenta de lo feo que era y lo atacó.",
    40, 370, 550, 550);
}

void imagen9() {
  imageMode(CENTER);
  image(patoJuguete, posXJug-200, 200, 300, 290);

  if (posXJug<=320) {
    posXJug+=dirJug;
  }
  if (posXJug>=320 && imagenQuietaJug <120) {
    posXJug=320;
    imagenQuietaJug++;
  }
  if (imagenQuietaJug==120) {
    dirJug= -2;
    posXJug +=dirJug;
  }
}

void imagen10() {

  image(jugueteAtacando, posXAtac, 185, 300, 280);

  if (posXAtac > 500 && imagenQuietaAtac == 0) {
    posXAtac -= 2;
  }
  if (posXAtac <= 500 && imagenQuietaAtac < 60) {
    posXAtac= 500;
    imagenQuietaAtac++;
  }
  if (imagenQuietaAtac >= 60) {
    posXAtac += 2;
  }
}

void siguientePantalla5() {
  tiempoPantalla5++;
  if (tiempoPantalla5>=450) {
    pantalla=6;
    tiempoPantalla5=0;
  }
}




void texto6() {
  fill(0, 0, 0, 80);
  rect(20, 350, 600, 620);

  if (transicionTexto3 < 255) {
    transicionTexto3 += 5;
  }
  fill(255, transicionTexto3);
  textSize(30);
  text("El Patito Feo rompió en llanto, no tenía familia. Estába solo. Instantáneamente graznidos al unísono llamaron su atención, haciendo que abra sus ojos.",
    40, 370, 550, 550);
}

void imagen11() {
  imageMode(CENTER);
  image(patitoLlorando, posXLloran, 150, 280, 280);

  if (posXLloran<=170) {
    posXLloran+=dirLloran;
  }
  if (posXLloran>=170 && imagenQuietaLloran <180) {
    posXLloran=170;
    imagenQuietaLloran++;
  }
  if (imagenQuietaLloran==180) {
    dirLloran= -2;
    posXLloran +=dirLloran;
  }
}
void imagen12() {

  image(patitosViendoPatito, posXCisnes, 180, 250, 250);

  if (posXCisnes > 520 && imagenQuietaCisnes == 0) {
    posXCisnes -= 2;
  }
  if (posXCisnes <= 520 && imagenQuietaCisnes < 60) {
    posXCisnes= 520;
    imagenQuietaCisnes++;
  }
  if (imagenQuietaCisnes >= 60) {
    posXCisnes += 2;
  }
}

void siguientePantalla6() {

  tiempoPantalla6++;
  if (tiempoPantalla6>=450) {
    pantalla=7;
    tiempoPantalla6=0;
  }
}

void texto7() {
  fill(0, 0, 0, 80);
  rect(20, 350, 600, 620);

  if (transicionTexto3 < 255) {
    transicionTexto3 += 5;
  }
  fill(255, transicionTexto3);
  textSize(30);
  text("Cuando abrió los ojos, patitos iguales a Patito Feo lo estaban mirando! Lo llevaron con su madre quien era una hermosa Cisne.",
    40, 370, 550, 550);
}

void imagen13() {
  imageMode(CENTER);
  image(familiaCisne, posXFamilia, 180, 280, 280);

  if (posXFamilia<=200) {
    posXFamilia+=dirFamilia;
  }
  if (posXFamilia>=200 && imagenQuietaFamilia <120) {
    posXFamilia=200;
    imagenQuietaFamilia++;
  }
  if (imagenQuietaFamilia==120) {
    dirFamilia= -2;
    posXFamilia +=dirFamilia;
  }
}

void imagen14() {
  image(patitosFelices, posXFelices, 180, 280, 280);

  if (posXFelices > 480 && ImagenQuietaFelices == 0) {
    posXFelices -= 2;
  }
  if (posXFelices <= 480 && ImagenQuietaFelices < 60) {
    posXFelices= 480;
    ImagenQuietaFelices++;
  }
  if (ImagenQuietaFelices >= 60) {
    posXFelices += 2;
  }
}

void siguientePantalla7() {
  tiempoPantalla7++;
  if (tiempoPantalla7>=450) {
    pantalla=8;
    tiempoPantalla7=0;
  }
}

void texto8() {

  fill(0, 0, 0, 80);
  rect(20, 350, 600, 620);

  if (transicionTexto3 < 255) {
    transicionTexto3 += 5;
  }
  fill(255, transicionTexto3);
  textSize(30);
  text("Así, el Patito Feo, se fue con su nueva familia, llena de amor y cariño. Fin",
    40, 370, 550, 550);
}

void imagen15() {
  imageMode(CENTER);
  image(finalFeliz, 340, 180, anchoFinal, altoFinal);

  anchoFinal-=2;
  altoFinal-=2;
  if (anchoFinal > 0) {
    anchoFinal -= 0.3;
    altoFinal -= 0.3;
  }
  if (anchoFinal <= 0) {
    anchoFinal = 0;
    altoFinal = 0;
  }
}

void botonResetear() {
  fill(#EDC2D9);
  stroke(255);
  rect(botonX2, botonY2, ancho2, alto2, 10);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("reiniciar", 320, 136);
}


void valorOriginal() {
  imagenQuieta=0;
  imagenQuieta2=0;
  posOpuesta=930;
  dir=2;
  posX=0;
  pantalla = 0;
  posXNac = 0;
  posXcasc=960;
  imagenQuietaNac = 0;
  imagenQuietaCasc = 0;
  dirNac=2;
  posYViendo= 0;
  imagenQuietaViendo=0;
  dirViendo=2;
  posYDisc= 0;
  posXDisc=460;
  imagenQuietaDisc=0;
  dirDisc=2;
  posYRef=0;
  imagenQuietaRef=0;
  dirRef=2;
  posCulp= 0;
  imagenQuietaCulp=0;
  dirCulp= -2;
  posXJug=0;
  imagenQuietaJug=0;
  dirJug=2;
  posXAtac=950;
  imagenQuietaAtac=0;
  dirAtac=2;
  posXLloran=0;
  imagenQuietaLloran=0;
  dirLloran=2;
  posXCisnes=950;
  imagenQuietaCisnes=0;
  posXFamilia=0;
  imagenQuietaFamilia=0;
  dirFamilia=2;
  posXFelices=950;
  ImagenQuietaFelices=0;
  anchoFinal=420;
  altoFinal=400;
}
