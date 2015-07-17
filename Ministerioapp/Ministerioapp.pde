PImage file;
PFont fontIntro;

boolean intro = true;
boolean menu = false;
//Displays por idiomas
boolean submenu1 = false;
boolean conociendonos1 = false;
boolean madretierra1 = false;
boolean animales1 = false;
boolean cantemos1 = false;
boolean verbos1 = false;
boolean abecedario1 = false;

void setup(){
  size(displayWidth,displayHeight);
  orientation(LANDSCAPE);
  file = loadImage("aimara.png");
  fontIntro = loadFont("CourierNew36.vlw");
}

void draw(){
  if (intro) displayIntro();
  else if (menu) displayMenu();
  else if (submenu1) displaySubmenu1();
  else if (conociendonos1) displayConociendonos1();
  else if (madretierra1) displayMadretierra1();
  else if (animales1) displayAnimales1();
  else if (cantemos1) displayCantemos1();
  else if (verbos1) displayVerbos1();
  else if (abecedario1) displayAbecedario1();
}

void displayIntro(){
  if(millis()<3000){    
    entrada();
  }
  else if(millis()<6000){
    nombre();
  }
  else{
    intro = false;
    menu = true;
  }    
}

void displayMenu(){
  
}

void displaySubmenu1(){

}

void displayConociendonos1(){

}

void displayMadretierra1(){

}

void displayAnimales1(){

}

void displayCantemos1(){

}

void displayVerbos1(){

}

void displayAbecedario1(){

}

//funciones de cada display

void entrada(){
  
}

void nombre(){

}

