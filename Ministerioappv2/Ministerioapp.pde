/*
lengua0=aymara
lengua1=jaqaru
lengua2=quechua
lengua3=shipibo
lengua4=matshiguenka
lengua5=yine
*/

PFont fontMenu;
PImage imagenIntro;

String[] lenguas = {"Aymara","Jaqaru","Quechua","Shipibo","Matsiguenka","Yine"}; 
boolean intro = true;
boolean menu = false;
//Displays por idiomas

//lengua0
boolean submenu1 = false;
boolean conociendonos1 = false;
boolean madretierra1 = false;
boolean animales1 = false;
boolean cantemos1 = false;
boolean verbos1 = false;
boolean abecedario1 = false;

//lengua1
boolean submenu2 = false;
boolean conociendonos2 = false;
boolean madretierra2 = false;
boolean animales2 = false;
boolean cantemos2 = false;
boolean verbos2 = false;
boolean abecedario2 = false;
float anchoGlobal;
float altoGlobal;

boolean pageact;
boolean pagenew;

int n=6;
PImage[] file = new PImage[n];
ImageButtons[] menuButtons = new ImageButtons[n];
float[] alfa = new float[n];
float[] escalador={1.0,0.84,0.87,1.15,0.84,0.98};
float[] modificadorvert={1.0,1.02,1.02,1.05,1.06,0.95};
float[] factorDesp={1.5,1.195,1.14,1.14,1.08,1.085};
void setup(){
  size(displayWidth,displayHeight);
  anchoGlobal = displayWidth;
  altoGlobal = displayHeight;
  imagenIntro=loadImage("nombre.png");
  orientation(LANDSCAPE);
  
  for(int i=0;i<file.length;i++){
    file[i]=loadImage("lengua"+str(i)+".png");
    alfa[i]=escalador[i]*anchoGlobal/(8*file[i].width);
    menuButtons[i] = new ImageButtons(int(((3+2*i)*anchoGlobal/16)-(alfa[i]*file[i].width)/2),int(modificadorvert[i]*((altoGlobal/2)-(alfa[i]*file[i].height)/2)),int(alfa[i]*file[i].width),int(alfa[i]*file[i].height),file[i],file[i],1); 
  }
  fontMenu = loadFont("Haettenschweiler-48.vlw");
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
  
  else if (submenu2) displaySubmenu2();
  else if (conociendonos2) displayConociendonos2();
  else if (madretierra2) displayMadretierra2();
  else if (animales2) displayAnimales2();
  else if (cantemos2) displayCantemos2();
  else if (verbos2) displayVerbos2();
  else if (abecedario2) displayAbecedario2();
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
  for(int i=0;i<menuButtons.length;i++){
    menuButtons[i].update();
    menuButtons[i].display();   
  }
  menu=pageact;
  submenu1=pagenew;
}

//Subrutinas para la lengua0
/////////////////////////////////////////////////////////////////////////
void displaySubmenu1(){
  submenu1();
  menuButtons[5].update();
  menuButtons[5].display();
  
  submenu1=pageact;
  conociendonos1=pagenew;
}

void displayConociendonos1(){
  conociendonos1();
  menuButtons[5].update();
  menuButtons[5].display();
  
  conociendonos1=pageact;
  madretierra1=pagenew;
}

void displayMadretierra1(){
  madretierra1();
}

void displayAnimales1(){

}

void displayCantemos1(){

}

void displayVerbos1(){

}

void displayAbecedario1(){

}

//subrutinas para la lengua1
void displaySubmenu2(){
  submenu2();
  menuButtons[1].update();
  menuButtons[1].display();
  
  submenu2=pageact;
  conociendonos2=pagenew;
}

void displayConociendonos2(){
  conociendonos2();
  menuButtons[2].update();
  menuButtons[2].display();
  
  conociendonos2=pageact;
  madretierra2=pagenew;
}

void displayMadretierra2(){
  madretierra2();
}

void displayAnimales2(){

}

void displayCantemos2(){

}

void displayVerbos2(){

}

void displayAbecedario2(){

}

//funciones de cada display de entrada
void entrada(){
  background(0);
}

void nombre(){
  background(255);
  imageMode(CENTER);
  image(imagenIntro,anchoGlobal/2,altoGlobal/2,imagenIntro.width*anchoGlobal/1360,imagenIntro.height*anchoGlobal/1360);
  imageMode(CORNER);
}

void menu(){
  background(127);
  textFont(fontMenu,int(altoGlobal/16));
  fill(255);
  textAlign(CENTER);
  //textSize(altoGlobal/16);
  for(int i=0;i<lenguas.length;i++){
    text(lenguas[i],factorDesp[i]*int(((3+2*i)*anchoGlobal/16)-(alfa[i]*file[i].width)/2),int((1.1*(altoGlobal/2)+(alfa[1]*file[1].height)/2)));  
  }  
}

//funciones de cada display de la lengua0
void submenu1(){
  background(255,0,0);
}

void conociendonos1(){
  background(0,255,0);
}

void madretierra1(){
  background(0,0,255);
}

//funciones de cada display de la lengua1

void submenu2(){
  background(255,0,0);
}

void conociendonos2(){
  background(0,255,0);
}

void madretierra2(){
  background(0,0,255);
}
