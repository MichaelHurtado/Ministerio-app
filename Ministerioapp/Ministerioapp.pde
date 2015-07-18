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

boolean pageact;
boolean pagenew;

ImageButtons button1,button2,button3;

void setup(){
  size(displayWidth,displayHeight);
  orientation(LANDSCAPE);
  file = loadImage("aimara.png");
  fontIntro = loadFont("CourierNew36.vlw");
  button1 = new ImageButtons(20,20,file.width,file.height,file,file);
  button2 = new ImageButtons(320,20,file.width,file.height,file,file);
  button3 = new ImageButtons(620,20,file.width,file.height,file,file);
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
  menu();
  button1.update();
  button1.display();
  menu=pageact;
  submenu1=pagenew;
}

void displaySubmenu1(){
  submenu();
  button2.update();
  button2.display();
  
  submenu1=pageact;
  conociendonos1=pagenew;
}

void displayConociendonos1(){
  conociendonos();
  button3.update();
  button3.display();
  
  conociendonos1=pageact;
  madretierra1=pagenew;
}

void displayMadretierra1(){
  madretierra();
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
  background(0);
}

void nombre(){
  background(255);
}

void menu(){
  background(127);
}

void submenu(){
  background(255,0,0);
}

void conociendonos(){
  background(0,255,0);
}

void madretierra(){
  background(0,0,255);
}
