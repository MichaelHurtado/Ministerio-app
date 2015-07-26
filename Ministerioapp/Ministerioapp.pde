/*
lengua0=aymara
lengua1=jaqaru
lengua2=quechua
lengua3=shipibo
lengua4=matshiguenka
lengua5=yine
*/

import apwidgets.*;
APMediaPlayer a01,a02,a03,a04,a05,a06,
              a11    ,a13,a14,a15,
              
              a31,a32,a33,a34,a35,a36,a37,a38,a39,a310,
              a41,a42,a43,a44,a45,
              a51,
              j01,j02,j03,j04,j05,j06,
              j11,j12    ,j14,j15,
              
              j31,j32,j33,j34,j35,j36,j37,j38,j39,
              j41,j42,j43,j44,j45,
              j51;

PFont fontMenu,fontsubMenu,fontsubmenu;
PImage imagenMin;
PImage imagenIntro;
PImage imagenRight;
PImage imagenLeft;

String[] lenguas = {"Aymara","Jaqaru","Quechua","Shipibo","Matsiguenka","Yine"}; 
boolean intro = true;

float anchoGlobal;
float altoGlobal;

int n=6;
int activity = 0;

PImage[] file = new PImage[n];
ImageButtons[] menuButtons = new ImageButtons[n+4];
float[] alfa = new float[n];
float[] escalador={1.0,0.84,0.87,1.15,0.84,0.98};
float[] modificadorvert={1.0,1.02,1.02,1.05,1.06,0.95};
float[] factorDesp={1.5,1.195,1.14,1.14,1.08,1.085};

float beta;

SqButtons[] submenuButtons = new SqButtons[36];
String[] submenu = {"Saludándonos","Conociéndonos","Estamos viviendo","Madre tierra","Animales","Cantemos"}; 
String[][] SUBMENU = {{"Aruntasipxañani","Uñt’asipxañani","Jakasisipxktanwa","Pachamama","Uywanaka","Warurt’apxañani"},
                      {"Amruchatxi sashtna","Illt’ishitna","Jakasw jakktna","Uriqmama","Uywkuna","Katt’atna"},
                      {"Napayukuspanchik","Riqsinakuspa","Kawsachkanchik","Pachamama","Uywakuna","Takisun"},
                      {"Jowe Ianananti","Onanananti","Noara japariax itai","Mai tita","Yoinabo","Bewanon ikanwe"},
                      {"Niavakagantsi","Neavakagantsi","Timagantsi","Onato kipatsi","Inkenishipagekunirira","Matikaigakera"},
                      {"Walukakanu","Wumatkakanu","Estamos viviendo","Madre tierra","Animales","Wsikalwatanu"}};

void setup(){
  size(displayWidth,displayHeight);
  anchoGlobal = displayWidth;
  altoGlobal = displayHeight;
  //anchoGlobal = 720;
  //altoGlobal = 480;
  imagenMin=loadImage("mincultura.png");
  imagenIntro=loadImage("nombre.png");
  orientation(LANDSCAPE);
  
  for(int i=0;i<file.length;i++){
    file[i]=loadImage("lengua"+str(i)+".png");
    alfa[i]=escalador[i]*anchoGlobal/(8*file[i].width);
    menuButtons[i] = new ImageButtons(i,0,int(((3+2*i)*anchoGlobal/16)-(alfa[i]*file[i].width)/2),int(modificadorvert[i]*((altoGlobal/2)-(alfa[i]*file[i].height)/2)),int(alfa[i]*file[i].width),int(alfa[i]*file[i].height),file[i],file[i]); 
  }
  
  for(int i=0;i<SUBMENU.length;i++){
    for(int j=0;j<SUBMENU[0].length;j++){
      int k = (6*i)+j;
      submenuButtons[k] = new SqButtons(k,SUBMENU[i][j],submenu[j],int(anchoGlobal/9),int(altoGlobal/13));
    }
  }
  
  imagenRight=loadImage("right.png");
  beta = imagenRight.height/altoGlobal;
  menuButtons[7] = new ImageButtons(7,1,int(anchoGlobal-(imagenRight.width/beta)),0,int(imagenRight.width/beta),int(altoGlobal),imagenRight,imagenRight);  //Adelantar
  imagenLeft=loadImage("left.png");
  menuButtons[6] = new ImageButtons(6,2,0,0,int(imagenRight.width/beta),int(altoGlobal),imagenLeft,imagenLeft);   //Retrasar
  menuButtons[8] = new ImageButtons(8,2,0,0,int(imagenRight.width/beta),int(altoGlobal),imagenLeft,imagenLeft);   //Retrasar al submenu principal
  menuButtons[9] = new ImageButtons(9,2,0,0,int(imagenRight.width/beta),int(altoGlobal),imagenLeft,imagenLeft);   //Retrasar al submenu principal

  fontMenu = loadFont("Haettenschweiler-48.vlw");
  fontsubMenu = loadFont("CourierNew36.vlw");
  fontsubmenu = loadFont("Haettenschweiler-100.vlw");
  //agregar otro 
  
  //Sonido
  for(int i=0;i<7;i++){
    saludandonosa(i);
    saludandonosj(i);
  }
  for(int i=0;i<10;i++){
    conociendonosa(i);
    conociendonosj(i);
    animalesa(i);
    animalesj(i);
  }
  for(int i=0;i<10;i++){
    madretierraa(i);
    madretierraj(i);
  }
  cantemosa();
  cantemosj();
}

void draw(){
  switch(activity){
    case 0:    // Menú principial ||Jaqaru Aymara Matsiguenka Quechua Shipibo Yine
        //Función de entrada
        if (intro) {
            if(millis()<5000){
              background(0);
              imageMode(CENTER);
              image(imagenMin,anchoGlobal/2,altoGlobal/2,imagenMin.width*anchoGlobal/1360,imagenMin.height*anchoGlobal/1360);
              imageMode(CORNER);
            }
            else if(millis()<10000){
                background(#F20000);
                imageMode(CENTER);
                image(imagenIntro,anchoGlobal/2,altoGlobal/2,imagenIntro.width*anchoGlobal/1360,imagenIntro.height*anchoGlobal/1360);
                imageMode(CORNER);
            }
            else { intro = false; }
        }
        //Función display
        else{
          background(69,90,140);
          textFont(fontMenu,int(altoGlobal/16));
          fill(255);
          textAlign(CENTER);
          //textSize(altoGlobal/16);
          for(int i=0;i<6;i++){
            text(lenguas[i],factorDesp[i]*int(((3+2*i)*anchoGlobal/16)-(alfa[i]*file[i].width)/2),int((1.1*(altoGlobal/2)+(alfa[1]*file[1].height)/2)));  
          }
          for(int i=0;i<6;i++){
            menuButtons[i].update();
            menuButtons[i].display();
          }
        }
      break;
    case 1:    // Submenú || Aymara
      background(238);
      textFont(fontsubmenu,int(altoGlobal/5));
      fill(98);
      text(lenguas[0],2.5*int(anchoGlobal/9),3*int(altoGlobal/13));
      for(int i=0;i<6;i++){
        submenuButtons[i].update();
        submenuButtons[i].display();
      }
      menuButtons[9].update();
      menuButtons[9].display();
      break; 
    case 2:    // Submenú || Aymara || Saludándonos || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 3:    // Submenú || Aymara || Saludándonos || 2
      background(255);
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 4:    // Submenú || Aymara || Saludándonos || 3
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 5:    // Submenú || Aymara || Conociendonos || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 6:    // Submenú || Aymara || Conociendonos || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 7:    // Submenú || Aymara || Conociendonos || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 8:    // Submenú || Aymara || Conociendonos || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 9:    // Submenú || Aymara || Conociendonos || 5
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 10:   // Submenú || Aymara || Verbo: Cantar || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 11:   // Submenú || Aymara || Verbo: Cantar || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 12:   // Submenú || Aymara || Verbo: Cantar || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 13:   // Submenú || Aymara || Verbo: Cantar || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 14:   // Submenú || Aymara || Verbo: Cantar || 5
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 15:   // Submenú || Aymara || Verbo: Cantar || 6
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 16:   // Submenú || Aymara || Verbo: Cantar || 7
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 17:   // Submenú || Aymara || Verbo: Caminar || 1
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 18:   // Submenú || Aymara || Verbo: Caminar || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 19:   // Submenú || Aymara || Verbo: Caminar || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 20:   // Submenú || Aymara || Verbo: Caminar || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 21:   // Submenú || Aymara || Verbo: Caminar || 5
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 22:   // Submenú || Aymara || Verbo: Caminar || 6
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 23:   // Submenú || Aymara || Verbo: Caminar || 7
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 24:   // Submenú || Aymara || Verbo: Comer || 1
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 25:   // Submenú || Aymara || Verbo: Comer || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 26:   // Submenú || Aymara || Verbo: Comer || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 27:   // Submenú || Aymara || Verbo: Comer || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 28:   // Submenú || Aymara || Verbo: Comer || 5
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 29:   // Submenú || Aymara || Verbo: Comer || 6
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 30:   // Submenú || Aymara || Verbo: Comer || 7
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 31:   // Submenú || Aymara || Madre tierra || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 32:   // Submenú || Aymara || Madre tierra || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 33:   // Submenú || Aymara || Madre tierra || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 34:   // Submenú || Aymara || Madre tierra || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 35:   // Submenú || Aymara || Madre tierra || 5
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 36:   // Submenú || Aymara || Animales || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 37:   // Submenú || Aymara || Animales || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 38:   // Submenú || Aymara || Animales || 3
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 39:   // Submenú || Aymara || Cantemos || 1
      background(255);
      menuButtons[8].update();
      menuButtons[8].display();
      break;
    case 40:   // Submenú || Jaqaru
      background(238);
      textFont(fontsubmenu,int(altoGlobal/5));
      fill(98);
      text(lenguas[1],2.5*int(anchoGlobal/9),3*int(altoGlobal/13));
      for(int i=6;i<12;i++){
        submenuButtons[i].update();
        submenuButtons[i].display();  
      }
      menuButtons[9].update();
      menuButtons[9].display();
      break; 
    case 41:   // Submenú || Jaqaru || Saludándonos || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 42:   // Submenú || Jaqaru || Saludándonos || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 43:   // Submenú || Jaqaru || Saludándonos || 3
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 44:   // Submenú || Jaqaru || Conociendonos || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 45:   // Submenú || Jaqaru || Conociendonos || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 46:   // Submenú || Jaqaru || Conociendonos || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 47:   // Submenú || Jaqaru || Conociendonos || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 48:   // Submenú || Jaqaru || Conociendonos || 5
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 49:   // Submenú || Jaqaru || Verbo: Cantar || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 50:   // Submenú || Jaqaru || Verbo: Cantar || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 51:   // Submenú || Jaqaru || Verbo: Cantar || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 52:   // Submenú || Jaqaru || Verbo: Cantar || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 53:   // Submenú || Jaqaru || Verbo: Cantar || 5
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 54:   // Submenú || Jaqaru || Verbo: Cantar || 6
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 55:   // Submenú || Jaqaru || Verbo: Cantar || 7
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 56:   // Submenú || Jaqaru || Verbo: Caminar || 1
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 57:   // Submenú || Jaqaru || Verbo: Caminar || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 58:   // Submenú || Jaqaru || Verbo: Caminar || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 59:   // Submenú || Jaqaru || Verbo: Caminar || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 60:   // Submenú || Jaqaru || Verbo: Caminar || 5
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 61:   // Submenú || Jaqaru || Verbo: Caminar || 6
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 62:   // Submenú || Jaqaru || Verbo: Caminar || 7
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 63:   // Submenú || Jaqaru || Verbo: Comer || 1
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 64:   // Submenú || Jaqaru || Verbo: Comer || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 65:   // Submenú || Jaqaru || Verbo: Comer || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 66:   // Submenú || Jaqaru || Verbo: Comer || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 67:   // Submenú || Jaqaru || Verbo: Comer || 5
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 68:   // Submenú || Jaqaru || Verbo: Comer || 6
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 69:   // Submenú || Jaqaru || Verbo: Comer || 7
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 70:   // Submenú || Jaqaru || Madre tierra || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 71:   // Submenú || Jaqaru || Madre tierra || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 72:   // Submenú || Jaqaru || Madre tierra || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 73:   // Submenú || Jaqaru || Madre tierra || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 74:   // Submenú || Jaqaru || Madre tierra || 5
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 75:   // Submenú || Jaqaru || Animales || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 76:   // Submenú || Jaqaru || Animales || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 77:   // Submenú || Jaqaru || Animales || 3
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 78:   // Submenú || Jaqaru || Cantemos || 1
      background(255);
      menuButtons[8].update();
      menuButtons[8].display();
      break;
    case 79:   // Submenú || Quechua
      background(238);
      textFont(fontsubmenu,int(altoGlobal/5));
      fill(98);
      text(lenguas[2],2.5*int(anchoGlobal/9),3*int(altoGlobal/13));
      for(int i=12;i<18;i++){
        submenuButtons[i].update();
        submenuButtons[i].display();  
      }
      menuButtons[9].update();
      menuButtons[9].display();
      break; 
    case 80:   // Submenú || Quechua || Saludándonos || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 81:   // Submenú || Quechua || Saludándonos || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 82:   // Submenú || Quechua || Saludándonos || 3
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 83:   // Submenú || Quechua || Conociendonos || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 84:   // Submenú || Quechua || Conociendonos || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 85:   // Submenú || Quechua || Conociendonos || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 86:   // Submenú || Quechua || Conociendonos || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 87:   // Submenú || Quechua || Conociendonos || 5
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 88:   // Submenú || Quechua || Verbo: Cantar || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 89:   // Submenú || Quechua || Verbo: Cantar || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 90:   // Submenú || Quechua || Verbo: Cantar || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 91:   // Submenú || Quechua || Verbo: Cantar || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 92:   // Submenú || Quechua || Verbo: Cantar || 5
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 93:   // Submenú || Quechua || Verbo: Cantar || 6
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 94:   // Submenú || Quechua || Verbo: Cantar || 7
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 95:   // Submenú || Quechua || Verbo: Caminar || 1
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 96:   // Submenú || Quechua || Verbo: Caminar || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 97:   // Submenú || Quechua || Verbo: Caminar || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 98:   // Submenú || Quechua || Verbo: Caminar || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 99:   // Submenú || Quechua || Verbo: Caminar || 5
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 100:  // Submenú || Quechua || Verbo: Caminar || 6
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 101:  // Submenú || Quechua || Verbo: Caminar || 7
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 102:  // Submenú || Quechua || Verbo: Comer || 1
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 103:  // Submenú || Quechua || Verbo: Comer || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 104:  // Submenú || Quechua || Verbo: Comer || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 105:  // Submenú || Quechua || Verbo: Comer || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 106:  // Submenú || Quechua || Verbo: Comer || 5
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 107:  // Submenú || Quechua || Verbo: Comer || 6
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 108:  // Submenú || Quechua || Verbo: Comer || 7
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 109:  // Submenú || Quechua || Madre tierra || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 110:  // Submenú || Quechua || Madre tierra || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 111:  // Submenú || Quechua || Madre tierra || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 112:  // Submenú || Quechua || Madre tierra || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 113:  // Submenú || Quechua || Madre tierra || 5
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 114:  // Submenú || Quechua || Animales || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 115:  // Submenú || Quechua || Animales || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 116:  // Submenú || Quechua || Animales || 3
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 117:  // Submenú || Quechua || Cantemos || 1
      background(255);
      menuButtons[8].update();
      menuButtons[8].display();
      break;
    case 118:  // Submenú || Shipibo
      background(238);
      textFont(fontsubmenu,int(altoGlobal/5));
      fill(98);
      text(lenguas[3],2.5*int(anchoGlobal/9),3*int(altoGlobal/13));
      for(int i=18;i<24;i++){
        submenuButtons[i].update();
        submenuButtons[i].display();  
      }
      menuButtons[9].update();
      menuButtons[9].display();
      break; 
    case 119:  // Submenú || Shipibo || Saludándonos || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 120:  // Submenú || Shipibo || Saludándonos || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 121:  // Submenú || Shipibo || Saludándonos || 3
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 122:  // Submenú || Shipibo || Conociendonos || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 123:  // Submenú || Shipibo || Conociendonos || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 124:  // Submenú || Shipibo || Conociendonos || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 125:  // Submenú || Shipibo || Conociendonos || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 126:  // Submenú || Shipibo || Conociendonos || 5
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 127:  // Submenú || Shipibo || Verbo: Cantar || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 128:  // Submenú || Shipibo || Verbo: Cantar || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 129:  // Submenú || Shipibo || Verbo: Cantar || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 130:  // Submenú || Shipibo || Verbo: Cantar || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 131:  // Submenú || Shipibo || Verbo: Cantar || 5
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 132:  // Submenú || Shipibo || Verbo: Cantar || 6
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 133:  // Submenú || Shipibo || Verbo: Cantar || 7
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 134:  // Submenú || Shipibo || Verbo: Caminar || 1
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 135:  // Submenú || Shipibo || Verbo: Caminar || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 136:  // Submenú || Shipibo || Verbo: Caminar || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 137:  // Submenú || Shipibo || Verbo: Caminar || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 138:  // Submenú || Shipibo || Verbo: Caminar || 5
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 139:  // Submenú || Shipibo || Verbo: Caminar || 6
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 140:  // Submenú || Shipibo || Verbo: Caminar || 7
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 141:  // Submenú || Shipibo || Verbo: Comer || 1
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 142:  // Submenú || Shipibo || Verbo: Comer || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 143:  // Submenú || Shipibo || Verbo: Comer || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 144:  // Submenú || Shipibo || Verbo: Comer || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 145:  // Submenú || Shipibo || Verbo: Comer || 5
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 146:  // Submenú || Shipibo || Verbo: Comer || 6
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 147:  // Submenú || Shipibo || Verbo: Comer || 7
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 148:  // Submenú || Shipibo || Madre tierra || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 149:  // Submenú || Shipibo || Madre tierra || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 150:  // Submenú || Shipibo || Madre tierra || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 151:  // Submenú || Shipibo || Madre tierra || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 152:  // Submenú || Shipibo || Madre tierra || 5
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 153:  // Submenú || Shipibo || Animales || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 154:  // Submenú || Shipibo || Animales || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 155:  // Submenú || Shipibo || Animales || 3
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 156:  // Submenú || Shipibo || Cantemos || 1
      background(255);
      menuButtons[8].update();
      menuButtons[8].display();
      break;
    case 157:  // Submenú || Matsiguenka
      background(238);
      textFont(fontsubmenu,int(altoGlobal/5));
      fill(98);
      text(lenguas[4],int(imagenRight.width/beta)+2.5*int(anchoGlobal/9),3*int(altoGlobal/13));
      for(int i=24;i<30;i++){
        submenuButtons[i].update();
        submenuButtons[i].display();  
      }
      menuButtons[9].update();
      menuButtons[9].display();
      break; 
    case 158:  // Submenú || Matsiguenka || Saludándonos || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 159:  // Submenú || Matsiguenka || Saludándonos || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 160:  // Submenú || Matsiguenka || Saludándonos || 3
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 161:  // Submenú || Matsiguenka || Conociendonos || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 162:  // Submenú || Matsiguenka || Conociendonos || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 163:  // Submenú || Matsiguenka || Conociendonos || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 164:  // Submenú || Matsiguenka || Conociendonos || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 165:  // Submenú || Matsiguenka || Conociendonos || 5
      background(255);
      break;
    case 166:  // Submenú || Matsiguenka || Verbo: Cantar || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 167:  // Submenú || Matsiguenka || Verbo: Cantar || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 168:  // Submenú || Matsiguenka || Verbo: Cantar || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 169:  // Submenú || Matsiguenka || Verbo: Cantar || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 170:  // Submenú || Matsiguenka || Verbo: Cantar || 5
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 171:  // Submenú || Matsiguenka || Verbo: Cantar || 6
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 172:  // Submenú || Matsiguenka || Verbo: Cantar || 7
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 173:  // Submenú || Matsiguenka || Verbo: Caminar || 1
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 174:  // Submenú || Matsiguenka || Verbo: Caminar || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 175:  // Submenú || Matsiguenka || Verbo: Caminar || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 176:  // Submenú || Matsiguenka || Verbo: Caminar || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 177:  // Submenú || Matsiguenka || Verbo: Caminar || 5
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 178:  // Submenú || Matsiguenka || Verbo: Caminar || 6
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 179:  // Submenú || Matsiguenka || Verbo: Caminar || 7
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 180:  // Submenú || Matsiguenka || Verbo: Comer || 1
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 181:  // Submenú || Matsiguenka || Verbo: Comer || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 182:  // Submenú || Matsiguenka || Verbo: Comer || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 183:  // Submenú || Matsiguenka || Verbo: Comer || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 184:  // Submenú || Matsiguenka || Verbo: Comer || 5
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 185:  // Submenú || Matsiguenka || Verbo: Comer || 6
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 186:  // Submenú || Matsiguenka || Verbo: Comer || 7
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 187:  // Submenú || Matsiguenka || Madre tierra || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 188:  // Submenú || Matsiguenka || Madre tierra || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 189:  // Submenú || Matsiguenka || Madre tierra || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 190:  // Submenú || Matsiguenka || Madre tierra || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 191:  // Submenú || Matsiguenka || Madre tierra || 5
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 192:  // Submenú || Matsiguenka || Animales || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 193:  // Submenú || Matsiguenka || Animales || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 194:  // Submenú || Matsiguenka || Animales || 3
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 195:  // Submenú || Matsiguenka || Cantemos || 1
      background(255);
      menuButtons[8].update();
      menuButtons[8].display();
      break;
    case 196:  // Submenú || Yine
      background(238);
      textFont(fontsubmenu,int(altoGlobal/5));
      fill(98);
      text(lenguas[5],2.5*int(anchoGlobal/9),3*int(altoGlobal/13));
      for(int i=30;i<36;i++){
        submenuButtons[i].update();
        submenuButtons[i].display();  
      }
      menuButtons[9].update();
      menuButtons[9].display();
      break; 
    case 197:  // Submenú || Yine || Saludándonos || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 198:  // Submenú || Yine || Saludándonos || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 199:  // Submenú || Yine || Saludándonos || 3
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 200:  // Submenú || Yine || Conociendonos || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 201:  // Submenú || Yine || Conociendonos || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 202:  // Submenú || Yine || Conociendonos || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 203:  // Submenú || Yine || Conociendonos || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 204:  // Submenú || Yine || Conociendonos || 5
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 205:  // Submenú || Yine || Verbo: Cantar || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 206:  // Submenú || Yine || Verbo: Cantar || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 207:  // Submenú || Yine || Verbo: Cantar || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 208:  // Submenú || Yine || Verbo: Cantar || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 209:  // Submenú || Yine || Verbo: Cantar || 5
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 210:  // Submenú || Yine || Verbo: Cantar || 6
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 211:  // Submenú || Yine || Verbo: Cantar || 7
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 212:  // Submenú || Yine || Verbo: Caminar || 1
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 213:  // Submenú || Yine || Verbo: Caminar || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 214:  // Submenú || Yine || Verbo: Caminar || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 215:  // Submenú || Yine || Verbo: Caminar || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 216:  // Submenú || Yine || Verbo: Caminar || 5
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 217:  // Submenú || Yine || Verbo: Caminar || 6
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 218:  // Submenú || Yine || Verbo: Caminar || 7
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 219:  // Submenú || Yine || Verbo: Comer || 1
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 220:  // Submenú || Yine || Verbo: Comer || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 221:  // Submenú || Yine || Verbo: Comer || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 222:  // Submenú || Yine || Verbo: Comer || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 223:  // Submenú || Yine || Verbo: Comer || 5
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 224:  // Submenú || Yine || Verbo: Comer || 6
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 225:  // Submenú || Yine || Verbo: Comer || 7
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 226:  // Submenú || Yine || Madre tierra || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 227:  // Submenú || Yine || Madre tierra || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 228:  // Submenú || Yine || Madre tierra || 3
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 229:  // Submenú || Yine || Madre tierra || 4
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 230:  // Submenú || Yine || Madre tierra || 5
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 231:  // Submenú || Yine || Animales || 1
      background(255);
      for(int i=7;i<=8;i++){
        menuButtons[i].update();
        menuButtons[i].display();  
      }
      break;
    case 232:  // Submenú || Yine || Animales || 2
      background(255);
      for(int i=6;i<=7;i++){
        menuButtons[i].update();
        menuButtons[i].display();
      }
      break;
    case 233:  // Submenú || Yine || Animales || 3
      background(255);
      menuButtons[6].update();
      menuButtons[6].display();
      break;
    case 234:  // Submenú || Yine || Cantemos || 1
      background(255);
      menuButtons[8].update();
      menuButtons[8].display();
      break;
    default:
      activity = 0;
      background(255);
      break;
  }
}



////////////////////////////////////////////////////////////////////////////////////////////
//Audios

void saludandonosa(int i){
  switch(i%6){
    case 0:
      a01 = new APMediaPlayer(this); //create new APMediaPlayer
      a01.setMediaFile("a01.mp3"); //set the file (files are in data folder)
      a01.setLooping(false); //restart playback end reached
      a01.setVolume(1.0, 1.0);
      break;
    case 1:
      a02 = new APMediaPlayer(this); //create new APMediaPlayer
      a02.setMediaFile("a02.mp3"); //set the file (files are in data folder)
      a02.setLooping(false); //restart playback end reached
      a02.setVolume(1.0, 1.0);
      break;
    case 2:
      a03 = new APMediaPlayer(this); //create new APMediaPlayer
      a03.setMediaFile("a03.mp3"); //set the file (files are in data folder)
      a03.setLooping(false); //restart playback end reached
      a03.setVolume(1.0, 1.0);
      break;
    case 3:
      a04 = new APMediaPlayer(this); //create new APMediaPlayer
      a04.setMediaFile("a04.mp3"); //set the file (files are in data folder)
      a04.setLooping(false); //restart playback end reached
      a04.setVolume(1.0, 1.0);
      break;
    case 4:
      a05 = new APMediaPlayer(this); //create new APMediaPlayer
      a05.setMediaFile("a05.mp3"); //set the file (files are in data folder)
      a05.setLooping(false); //restart playback end reached
      a05.setVolume(1.0, 1.0);
      break;
    case 5:
      a06 = new APMediaPlayer(this); //create new APMediaPlayer
      a06.setMediaFile("a06.mp3"); //set the file (files are in data folder)
      a06.setLooping(false); //restart playback end reached
      a06.setVolume(1.0, 1.0);
      break;
  }
}
void conociendonosa(int i){
  switch(i%5){
    case 0:
      a11 = new APMediaPlayer(this); //create new APMediaPlayer
      a11.setMediaFile("a11.mp3"); //set the file (files are in data folder)
      a11.setLooping(false); //restart playback end reached
      a11.setVolume(1.0, 1.0);
      break;
    case 1:
      /*a12 = new APMediaPlayer(this); //create new APMediaPlayer
      a12.setMediaFile("a12.mp3"); //set the file (files are in data folder)
      a12.setLooping(false); //restart playback end reached
      a12.setVolume(1.0, 1.0);*/
      break;
    case 2:
      a13 = new APMediaPlayer(this); //create new APMediaPlayer
      a13.setMediaFile("a13.mp3"); //set the file (files are in data folder)
      a13.setLooping(false); //restart playback end reached
      a13.setVolume(1.0, 1.0);
      break;
    case 3:
      a14 = new APMediaPlayer(this); //create new APMediaPlayer
      a14.setMediaFile("a14.mp3"); //set the file (files are in data folder)
      a14.setLooping(false); //restart playback end reached
      a14.setVolume(1.0, 1.0);
      break;
    case 4:
      a15 = new APMediaPlayer(this); //create new APMediaPlayer
      a15.setMediaFile("a15.mp3"); //set the file (files are in data folder)
      a15.setLooping(false); //restart playback end reached
      a15.setVolume(1.0, 1.0);
      break;
  }
}




void madretierraa(int i){
  switch(i%10){
    case 0:
      a31 = new APMediaPlayer(this); //create new APMediaPlayer
      a31.setMediaFile("a31.mp3"); //set the file (files are in data folder)
      a31.setLooping(false); //restart playback end reached
      a31.setVolume(1.0, 1.0);
      break;
    case 1:
      a32 = new APMediaPlayer(this); //create new APMediaPlayer
      a32.setMediaFile("a32.mp3"); //set the file (files are in data folder)
      a32.setLooping(false); //restart playback end reached
      a32.setVolume(1.0, 1.0);
      break;
    case 2:
      a33 = new APMediaPlayer(this); //create new APMediaPlayer
      a33.setMediaFile("a33.mp3"); //set the file (files are in data folder)
      a33.setLooping(false); //restart playback end reached
      a33.setVolume(1.0, 1.0);
      break;
    case 3:
      a34 = new APMediaPlayer(this); //create new APMediaPlayer
      a34.setMediaFile("a34.mp3"); //set the file (files are in data folder)
      a34.setLooping(false); //restart playback end reached
      a34.setVolume(1.0, 1.0);
      break;
    case 4:
      a35 = new APMediaPlayer(this); //create new APMediaPlayer
      a35.setMediaFile("a35.mp3"); //set the file (files are in data folder)
      a35.setLooping(false); //restart playback end reached
      a35.setVolume(1.0, 1.0);
      break;
    case 5:
      a36 = new APMediaPlayer(this); //create new APMediaPlayer
      a36.setMediaFile("a36.mp3"); //set the file (files are in data folder)
      a36.setLooping(false); //restart playback end reached
      a36.setVolume(1.0, 1.0);
      break;
    case 6:
      a37 = new APMediaPlayer(this); //create new APMediaPlayer
      a37.setMediaFile("a37.mp3"); //set the file (files are in data folder)
      a37.setLooping(false); //restart playback end reached
      a37.setVolume(1.0, 1.0);
      break;
    case 7:
      a38 = new APMediaPlayer(this); //create new APMediaPlayer
      a38.setMediaFile("a38.mp3"); //set the file (files are in data folder)
      a38.setLooping(false); //restart playback end reached
      a38.setVolume(1.0, 1.0);
      break;
    case 8:
      a39 = new APMediaPlayer(this); //create new APMediaPlayer
      a39.setMediaFile("a39.mp3"); //set the file (files are in data folder)
      a39.setLooping(false); //restart playback end reached
      a39.setVolume(1.0, 1.0);
      break;
    case 9:
      a310 = new APMediaPlayer(this); //create new APMediaPlayer
      a310.setMediaFile("a310.mp3"); //set the file (files are in data folder)
      a310.setLooping(false); //restart playback end reached
      a310.setVolume(1.0, 1.0);
      break;
  }
}

void animalesa(int i){
  switch(i%5){
    case 0:
      a41 = new APMediaPlayer(this); //create new APMediaPlayer
      a41.setMediaFile("a41.mp3"); //set the file (files are in data folder)
      a41.setLooping(false); //restart playback end reached
      a41.setVolume(1.0, 1.0);
      break;
    case 1:
      a42 = new APMediaPlayer(this); //create new APMediaPlayer
      a42.setMediaFile("a42.mp3"); //set the file (files are in data folder)
      a42.setLooping(false); //restart playback end reached
      a42.setVolume(1.0, 1.0);
      break;
    case 2:
      a43 = new APMediaPlayer(this); //create new APMediaPlayer
      a43.setMediaFile("a43.mp3"); //set the file (files are in data folder)
      a43.setLooping(false); //restart playback end reached
      a43.setVolume(1.0, 1.0);
      break;
    case 3:
      a44 = new APMediaPlayer(this); //create new APMediaPlayer
      a44.setMediaFile("a44.mp3"); //set the file (files are in data folder)
      a44.setLooping(false); //restart playback end reached
      a44.setVolume(1.0, 1.0);
      break;
    case 4:
      a45 = new APMediaPlayer(this); //create new APMediaPlayer
      a45.setMediaFile("a45.mp3"); //set the file (files are in data folder)
      a45.setLooping(false); //restart playback end reached
      a45.setVolume(1.0, 1.0);
      break;
  }
}

void cantemosa(){ 
      a51 = new APMediaPlayer(this); //create new APMediaPlayer
      a51.setMediaFile("a51.mp3"); //set the file (files are in data folder)
      a51.setLooping(false); //restart playback end reached
      a51.setVolume(1.0, 1.0);
}

////////////////////////////////////////////////////////////////////////////////////////

void saludandonosj(int i){
  switch(i%6){
    case 0:
      j01 = new APMediaPlayer(this); //create new APMediaPlayer
      j01.setMediaFile("j01.mp3"); //set the file (files are in data folder)
      j01.setLooping(false); //restart playback end reached
      j01.setVolume(1.0, 1.0);
      break;
    case 1:
      j02 = new APMediaPlayer(this); //create new APMediaPlayer
      j02.setMediaFile("j02.mp3"); //set the file (files are in data folder)
      j02.setLooping(false); //restart playback end reached
      j02.setVolume(1.0, 1.0);
      break;
    case 2:
      j03 = new APMediaPlayer(this); //create new APMediaPlayer
      j03.setMediaFile("j03.mp3"); //set the file (files are in data folder)
      j03.setLooping(false); //restart playback end reached
      j03.setVolume(1.0, 1.0);
      break;
    case 3:
      j04 = new APMediaPlayer(this); //create new APMediaPlayer
      j04.setMediaFile("j04.mp3"); //set the file (files are in data folder)
      j04.setLooping(false); //restart playback end reached
      j04.setVolume(1.0, 1.0);
      break;
    case 4:
      j05 = new APMediaPlayer(this); //create new APMediaPlayer
      j05.setMediaFile("j05.mp3"); //set the file (files are in data folder)
      j05.setLooping(false); //restart playback end reached
      j05.setVolume(1.0, 1.0);
      break;
    case 5:
      j06 = new APMediaPlayer(this); //create new APMediaPlayer
      j06.setMediaFile("j06.mp3"); //set the file (files are in data folder)
      j06.setLooping(false); //restart playback end reached
      j06.setVolume(1.0, 1.0);
      break;
  }
}
void conociendonosj(int i){
  switch(i%5){
    case 0:
      j11 = new APMediaPlayer(this); //create new APMediaPlayer
      j11.setMediaFile("j11.mp3"); //set the file (files are in data folder)
      j11.setLooping(false); //restart playback end reached
      j11.setVolume(1.0, 1.0);
      break;
    case 1:
      j12 = new APMediaPlayer(this); //create new APMediaPlayer
      j12.setMediaFile("j12.mp3"); //set the file (files are in data folder)
      j12.setLooping(false); //restart playback end reached
      j12.setVolume(1.0, 1.0);
      break;
    case 2:
      /*j13 = new APMediaPlayer(this); //create new APMediaPlayer
      j13.setMediaFile("j13.mp3"); //set the file (files are in data folder)
      j13.setLooping(false); //restart playback end reached
      j13.setVolume(1.0, 1.0);*/
      break;
    case 3:
      j14 = new APMediaPlayer(this); //create new APMediaPlayer
      j14.setMediaFile("j14.mp3"); //set the file (files are in data folder)
      j14.setLooping(false); //restart playback end reached
      j14.setVolume(1.0, 1.0);
      break;
    case 4:
      j15 = new APMediaPlayer(this); //create new APMediaPlayer
      j15.setMediaFile("j15.mp3"); //set the file (files are in data folder)
      j15.setLooping(false); //restart playback end reached
      j15.setVolume(1.0, 1.0);
      break;
  }
}




void madretierraj(int i){
  switch(i%10){
    case 0:
      j31 = new APMediaPlayer(this); //create new APMediaPlayer
      j31.setMediaFile("j31.mp3"); //set the file (files are in data folder)
      j31.setLooping(false); //restart playback end reached
      j31.setVolume(1.0, 1.0);
      break;
    case 1:
      j32 = new APMediaPlayer(this); //create new APMediaPlayer
      j32.setMediaFile("j32.mp3"); //set the file (files are in data folder)
      j32.setLooping(false); //restart playback end reached
      j32.setVolume(1.0, 1.0);
      break;
    case 2:
      j33 = new APMediaPlayer(this); //create new APMediaPlayer
      j33.setMediaFile("j33.mp3"); //set the file (files are in data folder)
      j33.setLooping(false); //restart playback end reached
      j33.setVolume(1.0, 1.0);
      break;
    case 3:
      j34 = new APMediaPlayer(this); //create new APMediaPlayer
      j34.setMediaFile("j34.mp3"); //set the file (files are in data folder)
      j34.setLooping(false); //restart playback end reached
      j34.setVolume(1.0, 1.0);
      break;
    case 4:
      j35 = new APMediaPlayer(this); //create new APMediaPlayer
      j35.setMediaFile("j35.mp3"); //set the file (files are in data folder)
      j35.setLooping(false); //restart playback end reached
      j35.setVolume(1.0, 1.0);
      break;
    case 5:
      j36 = new APMediaPlayer(this); //create new APMediaPlayer
      j36.setMediaFile("j36.mp3"); //set the file (files are in data folder)
      j36.setLooping(false); //restart playback end reached
      j36.setVolume(1.0, 1.0);
      break;
    case 6:
      j37 = new APMediaPlayer(this); //create new APMediaPlayer
      j37.setMediaFile("j37.mp3"); //set the file (files are in data folder)
      j37.setLooping(false); //restart playback end reached
      j37.setVolume(1.0, 1.0);
      break;
    case 7:
      j38 = new APMediaPlayer(this); //create new APMediaPlayer
      j38.setMediaFile("j38.mp3"); //set the file (files are in data folder)
      j38.setLooping(false); //restart playback end reached
      j38.setVolume(1.0, 1.0);
      break;
    case 8:
      j39 = new APMediaPlayer(this); //create new APMediaPlayer
      j39.setMediaFile("j39.mp3"); //set the file (files are in data folder)
      j39.setLooping(false); //restart playback end reached
      j39.setVolume(1.0, 1.0);
      break;
    case 9:
      /*j310 = new APMediaPlayer(this); //create new APMediaPlayer
      j310.setMediaFile("j310.mp3"); //set the file (files are in data folder)
      j310.setLooping(false); //restart playback end reached
      j310.setVolume(1.0, 1.0);*/
      break;
  }
}

void animalesj(int i){
  switch(i%5){
    case 0:
      j41 = new APMediaPlayer(this); //create new APMediaPlayer
      j41.setMediaFile("j41.mp3"); //set the file (files are in data folder)
      j41.setLooping(false); //restart playback end reached
      j41.setVolume(1.0, 1.0);
      break;
    case 1:
      j42 = new APMediaPlayer(this); //create new APMediaPlayer
      j42.setMediaFile("j42.mp3"); //set the file (files are in data folder)
      j42.setLooping(false); //restart playback end reached
      j42.setVolume(1.0, 1.0);
      break;
    case 2:
      j43 = new APMediaPlayer(this); //create new APMediaPlayer
      j43.setMediaFile("j43.mp3"); //set the file (files are in data folder)
      j43.setLooping(false); //restart playback end reached
      j43.setVolume(1.0, 1.0);
      break;
    case 3:
      j44 = new APMediaPlayer(this); //create new APMediaPlayer
      j44.setMediaFile("j44.mp3"); //set the file (files are in data folder)
      j44.setLooping(false); //restart playback end reached
      j44.setVolume(1.0, 1.0);
      break;
    case 4:
      j45 = new APMediaPlayer(this); //create new APMediaPlayer
      j45.setMediaFile("j45.mp3"); //set the file (files are in data folder)
      j45.setLooping(false); //restart playback end reached
      j45.setVolume(1.0, 1.0);
      break;
  }
}

void cantemosj(){
      j51 = new APMediaPlayer(this); //create new APMediaPlayer
      j51.setMediaFile("j51.mp3"); //set the file (files are in data folder)
      j51.setLooping(false); //restart playback end reached
      j51.setVolume(1.0, 1.0);
}

