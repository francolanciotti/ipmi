String estado;
int esquinaX1 = 550;
int esquinaY1 = 400;
int botancho = 50;
int botalto = 50;
int borde = 50;
PImage imagen1, imagen2, imagen3, imagen4,imagenreinicio;
PFont fuente;
float transparenciamas1;
float transparenciamas2;
float transparenciamenos;


void setup () {
 size(640, 480);
 estado = "pantalla1";
 imagen1 =loadImage("imagen1.jpg");
 imagen2 =loadImage("imagen2.jpg");
 imagen3 =loadImage("imagen3.jpg");
 imagen4 =loadImage("imagen4.jpg");
 imagenreinicio =loadImage("reinicio.png");
 fuente = loadFont("Algerian.vlw");
 textFont(fuente);
 transparenciamas1 = 255;
 transparenciamas2 = 255;
 transparenciamenos = 0;
}

void draw() {
  
  if (estado == "pantalla1") {
  image(imagen1,0,0);
   if(frameCount /60 == 7) {
   estado = "pantalla2";}
   fill(0);
   textAlign(LEFT);
   text ("Es un RPG de acción\ny estrategia.\nPodes crear un personaje,\nhacer diplomacia, fabricar,\ncomerciar y conquistar\nnuevas tierras en un\nenorme sandbox medieval", 10, frameCount/3+180);
  }
  
  
  
  else if (estado == "pantalla2") {
  image(imagen2,0,0);
   if(frameCount /60 == 14) {
   estado = "pantalla3";}{
   fill(255, transparenciamas1);
   transparenciamas1 = transparenciamas1 - 0.6;}
   text ("es la tan esperada secuela\ndel juego de rol y simulador\nde combate medieval\nMount & Blade: Warband", 10, 50);
   }
   


   else if (estado == "pantalla3") {
   image(imagen3,0,0);
    if(frameCount /60 == 21) {
    estado = "pantalla4";}
    fill(0, transparenciamenos);
    textAlign(CENTER);
    text("Un imperio cae destrozado por la \nguerra civil.\nNuevos reinos se alzan más allá\nde sus fronteras.", width/2,(frameCount-900)/3);
        fill(100, 100, 250,transparenciamenos);
        text("Un imperio cae destrozado por la \nguerra civil.\nNuevos reinos se alzan más allá\nde sus fronteras.", width/2-1,(frameCount-895)/3); //sombra
        transparenciamenos = transparenciamenos+1;

    
    
  }
   else if (estado == "pantalla4") {
   image(imagen4,0,0);
    textAlign(RIGHT);
    fill(0, transparenciamas2);
    text("Empuña tu espada, ponete tu\narmadura, convoca a tus seguidores\ny cabalga hacia la gloria en los\ncampos de batalla de Calradia",619, 65);
    transparenciamas2 = transparenciamas2 - 0.8;
    
    
    fill (250, 20, 20);    //boton color
    rect (esquinaX1, esquinaY1, botancho, botalto, borde); //boton tamaño
    image(imagenreinicio, 555, 405); //fotito de reinicio
  }
   println (frameCount /60);      //tiempo en consola
}




void mousePressed() {
  if (estado == "pantalla4" && mouseX > esquinaX1 && mouseX < esquinaX1+botancho && mouseY > esquinaY1 && mouseY < esquinaY1 + botalto) {    //boton reinicio
     estado = "pantalla1";   //reinicio pantalla
     frameCount = 0;
     transparenciamas1 = 255;
     transparenciamenos = 0;
     transparenciamas2 = 255;
  }
}
