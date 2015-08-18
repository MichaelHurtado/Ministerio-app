class SqButtons extends Button {
  color TXT = 255;
  String SUBMENU,submenu;
  int min_x, min_y, ID;
 
  SqButtons(int iID, String iSUBMENU, String isubmenu, int imin_x,int imin_y) {
    SUBMENU = iSUBMENU;
    submenu = isubmenu;
    ID = iID;
    min_x = imin_x;
    min_y = imin_y;
    
    w = 3*min_x;
    h = 2*min_y;
    switch(ID%6){
      case 0:
        x = min_x;    y = 4*min_y;
        break;
      case 1:
        x = 5*min_x;  y = 4*min_y;
        break;
      case 2:
        x = min_x;    y = 7*min_y;
        break;
      case 3:
        x = 5*min_x;  y = 7*min_y;
        break;
      case 4:
        x = min_x;    y = 10*min_y;
        break;
      case 5:
        x = 5*min_x;  y = 10*min_y;
        break;
      default:
        x = 0;  y = 0;
    }
  }
  
  void update() {
    over();
    pressed();
    if(pressed){
      switch(ID){
        case 0:    //Submenú Aymara || Saludándonos
          //////////////////////////////////////////
          j=0;
          if(j==0){
            
            for(int i=0;i<6;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[0]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[0]+str(i)+".png");
              
              p1.setMediaFile("a01.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
               
              p2.setMediaFile("a02.mp3"); 
              p2.setLooping(false); 
              p2.setVolume(1.0, 1.0);
              
              p3.setMediaFile("a03.mp3"); 
              p3.setLooping(false); 
              p3.setVolume(1.0, 1.0);
               
              p4.setMediaFile("a04.mp3"); 
              p4.setLooping(false); 
              p4.setVolume(1.0, 1.0);
              
              p5.setMediaFile("a05.mp3"); 
              p5.setLooping(false); 
              p5.setVolume(1.0, 1.0);
               
              p6.setMediaFile("a06.mp3"); 
              p6.setLooping(false); 
              p6.setVolume(1.0, 1.0);
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Kamisaraki",p1);  //Saludandonos || 0 || Hola || Saludo
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Waliki",p2);  //Saludandonos || 1 || Hola || Respuesta
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Jakisiñkama",p3);  //Saludandonos || 2 || Chau || Despedida
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Jakisiñkama",p4);  //Saludandonos || 3 || Chau || Respuesta de despedida
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],false,"Jisa",p5);  //Saludandonos || 4 || Si
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],false,"Jani",p6);  //Saludandonos || 5 || No
            j=1;
          }
          //////////////////////////////////////////
          activity = 2;
          break;
        case 1:    //Submenú Aymara || Conociéndonos
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<10;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[0]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[0]+str(i+6)+".png");
              
              p1.setMediaFile("a11.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
               
              p2.setMediaFile("a12.mp3"); 
              p2.setLooping(false); 
              p2.setVolume(1.0, 1.0);
              
              p3.setMediaFile("vacio.mp3"); 
              p3.setLooping(false); 
              p3.setVolume(1.0, 1.0);
               
              p4.setMediaFile("a15.mp3"); 
              p4.setLooping(false); 
              p4.setVolume(1.0, 1.0);
              
              p5.setMediaFile("a16.mp3"); 
              p5.setLooping(false); 
              p5.setVolume(1.0, 1.0);
               
              p6.setMediaFile("a17.mp3"); 
              p6.setLooping(false); 
              p6.setVolume(1.0, 1.0);
              
              p7.setMediaFile("a18.mp3"); 
              p7.setLooping(false); 
              p7.setVolume(1.0, 1.0);
              
              p8.setMediaFile("a19.mp3"); 
              p8.setLooping(false); 
              p8.setVolume(1.0, 1.0);
              
              p9.setMediaFile("a20.mp3"); 
              p9.setLooping(false); 
              p9.setVolume(1.0, 1.0);
              
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Kunasa sutima?",p1);  //Conociéndonos || 6 || ¿Cuál es tu nombre?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Nayana sutijaxa ___",p2);  //Conociéndonos || 7 || Mi nombre es
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[1],jaqaru_file[i++],true,"Qhawqha maranitasa?",p3);  //Conociéndonos || 8 || ¿Cuántos años tienes?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[0],jaqaru_file[i++],true,"Nayaxa ___ maranithwa",p3);  //Conociéndonos || 9 || Yo tengo
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[1],jaqaru_file[i++],true,"Kawkithatasa?",p4);  //Conociéndonos || 10 || ¿De dónde eres?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[0],jaqaru_file[i++],true,"nayaxa ___ thathwa",p5);  //Conociéndonos || 11 || Yo soy de 
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Kawkinsa utjta?",p6);  //Conociéndonos || 12 || ¿Dónde vives? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"nayaxa ___ na utjtha",p7);  //Conociéndonos || 13 || Yo vivo en
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Kawkirusa saraskta?",p8);  //Conociéndonos || 14 || ¿A dónde estás yendo? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"___ru sarasktha",p9);  //Conociéndonos || 15 || Estoy yendo a
            j=1;
          }
          //////////////////////////////////////////
          activity = 5;
          break;
        case 2:    //Submenú Aymara || Estamos viviendo
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<18;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[0]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[0]+str(i+16)+".png");
              
              p1.setMediaFile("a21.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
               
              p2.setMediaFile("vacio.mp3"); 
              p2.setLooping(false); 
              p2.setVolume(1.0, 1.0);
              
              p3.setMediaFile("a23.mp3"); 
              p3.setLooping(false); 
              p3.setVolume(1.0, 1.0);
               
              p4.setMediaFile("a24.mp3"); 
              p4.setLooping(false); 
              p4.setVolume(1.0, 1.0);
              
              p5.setMediaFile("a26.mp3"); 
              p5.setLooping(false); 
              p5.setVolume(1.0, 1.0);
               
              p6.setMediaFile("a27.mp3"); 
              p6.setLooping(false); 
              p6.setVolume(1.0, 1.0);
              
              p7.setMediaFile("a28.mp3"); 
              p7.setLooping(false); 
              p7.setVolume(1.0, 1.0);
              
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Naya warurt’tha",p1);  //Estamos viviendo || 16 || Yo canto 
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Naya warurt’awtha",p2);  //Estamos viviendo || 17 || To canté
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Naya warurt’äja",p3);  //Estamos viviendo || 18 || Yo cantaré
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Juma warurt’ta",p4);  //Estamos viviendo || 19 || Tú cantas
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Juma warurt’awta",p2);  //Estamos viviendo || 20 || Tú cantaste
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Juma warurt’äta",p5);  //Estamos viviendo || 21 || Tú cantarás
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Jupa warurt’i",p6);  //Estamos viviendo || 22 || Él canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Jupa warurt’awi",p7);  //Estamos viviendo || 23 || Él cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Jupa  warurt’äni",p2);  //Estamos viviendo || 24 || Él cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Jupa warurt’i",p6);  //Estamos viviendo || 25 || Ella canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Jupa warurt’awi",p7);  //Estamos viviendo || 26 || Ella cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Jupa warurt’ani",p2);  //Estamos viviendo || 27 || Ella cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Jiwasa warurt’tana",p2);  //Estamos viviendo || 28 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Jiwasa warurt’awtana",p2);  //Estamos viviendo || 29 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Jiwasa warurt’añani",p2);  //Estamos viviendo || 30 || Nosotros cantaremos
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Jumanaka warurt’apxta",p2);  //Estamos viviendo || 31 || Ustedes cantan
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Jumanaka warurt’awapxta",p2);  //Estamos viviendo || 32 || Ustedes cantaron
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Jumanaka warurt’awapxata",p2);  //Estamos viviendo || 33 || Ustedes cantarán
            j=1;
          }
          //////////////////////////////////////////
          activity = 10;
          break;
        case 3:    //Submenú Aymara || Madre tierra
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<10;i++){
              //if(i<10){
                jaqaru_base[i]=loadImage(lenguas[1]+"_base"+str(i+3)+".png");
              //}
              jaqaru_file[i]=loadImage(lenguas[1]+str(i+70)+".png");
              
              p1.setMediaFile("a31.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
               
              p2.setMediaFile("a32.mp3"); 
              p2.setLooping(false); 
              p2.setVolume(1.0, 1.0);
              
              p3.setMediaFile("a33.mp3"); 
              p3.setLooping(false); 
              p3.setVolume(1.0, 1.0);
               
              p4.setMediaFile("a34.mp3"); 
              p4.setLooping(false); 
              p4.setVolume(1.0, 1.0);
              
              p5.setMediaFile("a35.mp3"); 
              p5.setLooping(false); 
              p5.setVolume(1.0, 1.0);
               
              p6.setMediaFile("a36.mp3"); 
              p6.setLooping(false); 
              p6.setVolume(1.0, 1.0);
              
              p7.setMediaFile("a37.mp3"); 
              p7.setLooping(false); 
              p7.setVolume(1.0, 1.0);
              
              p8.setMediaFile("a38.mp3"); 
              p8.setLooping(false); 
              p8.setVolume(1.0, 1.0);
              
              p9.setMediaFile("a39.mp3"); 
              p9.setLooping(false); 
              p9.setVolume(1.0, 1.0);
              
              p10.setMediaFile("a310.mp3"); 
              p10.setLooping(false); 
              p10.setVolume(1.0, 1.0);
              
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[0],jaqaru_file[i++],false,"Quqa",p1);  //Madre tierra || 34 || Árbol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[1],jaqaru_file[i++],false,"Jawira",p2);  //Madre tierra || 35 || Río 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[2],jaqaru_file[i++],false,"Qinaya",p3);  //Madre tierra || 34 || Nubes
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[3],jaqaru_file[i++],false,"Jallu",p4);  //Madre tierra || 35 || Lluvia
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[4],jaqaru_file[i++],false,"Uta",p5);  //Madre tierra || 34 || Casa
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[5],jaqaru_file[i++],false,"Manq’a",p6);  //Madre tierra || 35 || Comida
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[6],jaqaru_file[i++],false,"Inti/lupi/willka",p7);  //Madre tierra || 34 || Sol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[7],jaqaru_file[i++],false,"Phaxsi",p8);  //Madre tierra || 35 || Luna 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[8],jaqaru_file[i++],false,"Warawara",p9);  //Madre tierra || 34 || Estrellas
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[9],jaqaru_file[i++],false,"Nina",p10);  //Madre tierra || 35 || Fuego 
            j=1;
          }
          //////////////////////////////////////////
          activity = 31;
          break;
        case 4:    //Submenú Aymara || Animales
          activity = 36;
          break;
        case 5:    //Submenú Aymara || Abecedario
          activity = 39;
          break;
        case 6:    //Submenú Jaqaru || Saludándonos
          ///////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<6;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[1]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[1]+str(i)+".png");
              
              p1.setMediaFile("j01.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
               
              p2.setMediaFile("j02.mp3"); 
              p2.setLooping(false); 
              p2.setVolume(1.0, 1.0);
              
              p3.setMediaFile("j03.mp3"); 
              p3.setLooping(false); 
              p3.setVolume(1.0, 1.0);
               
              p4.setMediaFile("j04.mp3"); 
              p4.setLooping(false); 
              p4.setVolume(1.0, 1.0);
              
              p5.setMediaFile("j05.mp3"); 
              p5.setLooping(false); 
              p5.setVolume(1.0, 1.0);
               
              p6.setMediaFile("j06.mp3"); 
              p6.setLooping(false); 
              p6.setVolume(1.0, 1.0);
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Amruchatxi?",p1);  //Saludandonos || 0 || Hola || Saludo
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Amruchawa",p2);  //Saludandonos || 1 || Hola || Respuesta
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Maqktkaswa",p3);  //Saludandonos || 2 || Chau || Despedida
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Amruch maqmata",p4);  //Saludandonos || 3 || Chau || Respuesta de despedida
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],false,"Jawilli",p5);  //Saludandonos || 4 || Si
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],false,"Ishawa",p6);  //Saludandonos || 5 || No
            j=1;
          }
          ///////////////////////////////////////////
          activity = 41;
          break;
        case 7:    //Submenú Jaqaru || Conociéndonos
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<10;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[1]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[1]+str(i+6)+".png");
              
              p1.setMediaFile("j11.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
              
              p2.setMediaFile("j12.mp3"); 
              p2.setLooping(false); 
              p2.setVolume(1.0, 1.0);
              
              p3.setMediaFile("j13.mp3"); 
              p3.setLooping(false); 
              p3.setVolume(1.0, 1.0);
              
              p4.setMediaFile("j14.mp3"); 
              p4.setLooping(false); 
              p4.setVolume(1.0, 1.0);
              
              p5.setMediaFile("vacio.mp3"); 
              p5.setLooping(false); 
              p5.setVolume(1.0, 1.0);
              
              p6.setMediaFile("j17.mp3"); 
              p6.setLooping(false); 
              p6.setVolume(1.0, 1.0);
              
              p7.setMediaFile("j18.mp3"); 
              p7.setLooping(false); 
              p7.setVolume(1.0, 1.0);
              
              p8.setMediaFile("j19.mp3"); 
              p8.setLooping(false); 
              p8.setVolume(1.0, 1.0);
              
              p9.setMediaFile("j20.mp3"); 
              p9.setLooping(false); 
              p9.setVolume(1.0, 1.0);
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Quwas shutxim?",p1);  //Conociéndonos || 6 || ¿Cuál es tu nombre?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Shutxinhq ___ wa",p2);  //Conociéndonos || 7 || Mi nombre es
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[1],jaqaru_file[i++],true,"¿Ayk watawtasa?",p3);  //Conociéndonos || 8 || ¿Cuántos años tienes?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[0],jaqaru_file[i++],true,"Naq ___ watawt’wa",p4);  //Conociéndonos || 9 || Yo tengo
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[1],jaqaru_file[i++],true,"¿Qawit’  jaqiwtasa?",p5);  //Conociéndonos || 10 || ¿De dónde eres?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[0],jaqaru_file[i++],true,"Naq ___t’ jaqiwt’wa",p5);  //Conociéndonos || 11 || Yo soy de 
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Qawinas jakkta?",p6);  //Conociéndonos || 12 || ¿Dónde vives? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Naq ___nw jakkt’a",p7);  //Conociéndonos || 13 || Yo vivo en
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Qawas makta?",p8);  //Conociéndonos || 14 || ¿A dónde estás yendo? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Naq ___w makt’a",p9);  //Conociéndonos || 15 || Estoy yendo a
            j=1;
          }
          //////////////////////////////////////////
          activity = 44;
          break;
        case 8:    //Submenú Jaqaru || Estamos viviendo
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<18;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[1]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[1]+str(i+16)+".png");
              
              p1.setMediaFile("vacio.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Na kantkt’a",p1);  //Estamos viviendo || 16 || Yo canto 
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Na kantawt’a",p1);  //Estamos viviendo || 17 || To canté
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Na kantanha",p1);  //Estamos viviendo || 18 || Yo cantaré
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Juma Kantkta",p1);  //Estamos viviendo || 19 || Tú cantas
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Juma kantawta",p1);  //Estamos viviendo || 20 || Tú cantaste
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Juma kantmata",p1);  //Estamos viviendo || 21 || Tú cantarás
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Upa kantki",p1);  //Estamos viviendo || 22 || Él canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Upa kantawi",p1);  //Estamos viviendo || 23 || Él cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Upa kantani",p1);  //Estamos viviendo || 24 || Él cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Jiwsa kantktna",p1);  //Estamos viviendo || 25 || Ella canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Jiwsa kantawtna",p1);  //Estamos viviendo || 26 || Ella cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Jiwsa kantatna",p1);  //Estamos viviendo || 27 || Ella cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Jumkuna kantkta",p1);  //Estamos viviendo || 28 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Jumkuna kantawta",p1);  //Estamos viviendo || 29 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Jumkuna kantmata",p1);  //Estamos viviendo || 30 || Nosotros cantaremos
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Upkuna kantki",p1);  //Estamos viviendo || 31 || Ustedes cantan
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Upkuna kantawi",p1);  //Estamos viviendo || 32 || Ustedes cantaron
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Upkuna kantani",p1);  //Estamos viviendo || 33 || Ustedes cantarán
            j=1;
          }
          //////////////////////////////////////////
          activity = 49;
          break;
        case 9:    //Submenú Jaqaru || Madre tierra
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<10;i++){
              //if(i<10){
                jaqaru_base[i]=loadImage(lenguas[1]+"_base"+str(i+3)+".png");
              //}
              jaqaru_file[i]=loadImage(lenguas[1]+str(i+70)+".png");
              
              p1.setMediaFile("j31.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
              
              p2.setMediaFile("j32.mp3"); 
              p2.setLooping(false); 
              p2.setVolume(1.0, 1.0);
              
              p3.setMediaFile("j33.mp3"); 
              p3.setLooping(false); 
              p3.setVolume(1.0, 1.0);
              
              p4.setMediaFile("j34.mp3"); 
              p4.setLooping(false); 
              p4.setVolume(1.0, 1.0);
              
              p5.setMediaFile("j35.mp3"); 
              p5.setLooping(false); 
              p5.setVolume(1.0, 1.0);
              
              p6.setMediaFile("j36.mp3"); 
              p6.setLooping(false); 
              p6.setVolume(1.0, 1.0);
              
              p7.setMediaFile("j37.mp3"); 
              p7.setLooping(false); 
              p7.setVolume(1.0, 1.0);
              
              p8.setMediaFile("j38.mp3"); 
              p8.setLooping(false); 
              p8.setVolume(1.0, 1.0);
              
              p9.setMediaFile("j39.mp3"); 
              p9.setLooping(false); 
              p9.setVolume(1.0, 1.0);
              
              p10.setMediaFile("vacio.mp3"); 
              p10.setLooping(false); 
              p10.setVolume(1.0, 1.0);
              
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[0],jaqaru_file[i++],false,"Ajtz’ munti",p1);  //Madre tierra || 34 || Árbol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[1],jaqaru_file[i++],false,"Mayu",p2);  //Madre tierra || 35 || Río 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[2],jaqaru_file[i++],false,"Urpi",p3);  //Madre tierra || 34 || Nubes
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[3],jaqaru_file[i++],false,"Jallu",p4);  //Madre tierra || 35 || Lluvia
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[4],jaqaru_file[i++],false,"Uta",p5);  //Madre tierra || 34 || Casa
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[5],jaqaru_file[i++],false,"Putaka",p6);  //Madre tierra || 35 || Comida
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[6],jaqaru_file[i++],false,"Inti",p7);  //Madre tierra || 34 || Sol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[7],jaqaru_file[i++],false,"Pajshi",p8);  //Madre tierra || 35 || Luna 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[8],jaqaru_file[i++],false,"Waraja",p9);  //Madre tierra || 34 || Estrellas
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[9],jaqaru_file[i++],false,"Nina",p10);  //Madre tierra || 35 || Fuego 
            j=1;
          }
          //////////////////////////////////////////
          activity = 70;
          break;
        case 10:   //Submenú Jaqaru || Animales
          activity = 75;
          break;
        case 11:   //Submenú Jaqaru || Abecedario
          activity = 78;
          break;
        case 12:   //Submenú Quechua || Saludándonos
          ///////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<6;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[2]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[2]+str(i)+".png");
              
              p1.setMediaFile("vacio.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Allillanchu/imaynalla",p1);  //Saludandonos || 0 || Hola || Saludo
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Allillanmi/sumaqlla",p1);  //Saludandonos || 1 || Hola || Respuesta
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Kutimunaykama/huk kutinkama",p1);  //Saludandonos || 2 || Chau || Despedida
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Tupananchikkama/tupasunña",p1);  //Saludandonos || 3 || Chau || Respuesta de despedida
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],false,"Arí",p1);  //Saludandonos || 4 || Si
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],false,"Manam",p1);  //Saludandonos || 5 || No
            j=1;
          }
          ///////////////////////////////////////////
          activity = 80;
          break;
        case 13:   //Submenú Quechua || Conociéndonos
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<10;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[2]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[2]+str(i+6)+".png");
              
              p1.setMediaFile("vacio.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Iman sutiyki?",p1);  //Conociéndonos || 6 || ¿Cuál es tu nombre?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"sutiyqa ___",p1);  //Conociéndonos || 7 || Mi nombre es
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[1],jaqaru_file[i++],true,"¿Hayk’a watayuqmi kachkanki?",p1);  //Conociéndonos || 8 || ¿Cuántos años tienes?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[0],jaqaru_file[i++],true,"___ watayuq",p1);  //Conociéndonos || 9 || Yo tengo
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[1],jaqaru_file[i++],true,"¿Maymanta kanki?",p1);  //Conociéndonos || 10 || ¿De dónde eres?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[0],jaqaru_file[i++],true,"___manta kani",p1);  //Conociéndonos || 11 || Yo soy de 
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Maypi Tiyanki?",p1);  //Conociéndonos || 12 || ¿Dónde vives? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"___pi tiyani",p1);  //Conociéndonos || 13 || Yo vivo en
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Mayta richkanki?",p1);  //Conociéndonos || 14 || ¿A dónde estás yendo? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"___man richkani",p1);  //Conociéndonos || 15 || Estoy yendo a
            j=1;
          }
          //////////////////////////////////////////
          activity = 83;
          break;
        case 14:   //Submenú Quechua || Estamos viviendo
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<18;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[2]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[2]+str(i+16)+".png");
              p1.setMediaFile("vacio.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Ñuqam takichkani/takini",p1);  //Estamos viviendo || 16 || Yo canto 
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Ñuqam takimurqani",p1);  //Estamos viviendo || 17 || To canté
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Qam takimusaq",p1);  //Estamos viviendo || 18 || Yo cantaré
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Qam takichkanki",p1);  //Estamos viviendo || 19 || Tú cantas
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Qam takirqanki",p1);  //Estamos viviendo || 20 || Tú cantaste
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Qam takinki",p1);  //Estamos viviendo || 21 || Tú cantarás
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Pay takichkan/takin",p1);  //Estamos viviendo || 22 || Él canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Pay takirqam",p1);  //Estamos viviendo || 23 || Él cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Pay takinqa",p1);  //Estamos viviendo || 24 || Él cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Pay takichkan/takin",p1);  //Estamos viviendo || 25 || Ella canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Pay takirqam",p1);  //Estamos viviendo || 26 || Ella cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Pay takinqa",p1);  //Estamos viviendo || 27 || Ella cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Ñuqanchik takinchik",p1);  //Estamos viviendo || 28 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Ñuqanchik takirqanchik",p1);  //Estamos viviendo || 29 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Ñuqanchik takisunchik",p1);  //Estamos viviendo || 30 || Nosotros cantaremos
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Qamkuna takichkankichik",p1);  //Estamos viviendo || 31 || Ustedes cantan
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Qamkuna takirqankichik",p1);  //Estamos viviendo || 32 || Ustedes cantaron
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Qamkuna takinkichik",p1);  //Estamos viviendo || 33 || Ustedes cantarán
            j=1;
          }
          //////////////////////////////////////////
          activity = 88;
          break;
        case 15:   //Submenú Quechua || Madre tierra
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<10;i++){
              //if(i<10){
                jaqaru_base[i]=loadImage(lenguas[1]+"_base"+str(i+3)+".png");
              //}
              jaqaru_file[i]=loadImage(lenguas[1]+str(i+70)+".png");
              
              p1.setMediaFile("vacio.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[0],jaqaru_file[i++],false,"Mallki",p1);  //Madre tierra || 34 || Árbol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[1],jaqaru_file[i++],false,"Mayu",p1);  //Madre tierra || 35 || Río 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[2],jaqaru_file[i++],false,"Phuyu",p1);  //Madre tierra || 34 || Nubes
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[3],jaqaru_file[i++],false,"Para",p1);  //Madre tierra || 35 || Lluvia
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[4],jaqaru_file[i++],false,"Wasi",p1);  //Madre tierra || 34 || Casa
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[5],jaqaru_file[i++],false,"Mikhuna",p1);  //Madre tierra || 35 || Comida
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[6],jaqaru_file[i++],false,"Inti",p1);  //Madre tierra || 34 || Sol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[7],jaqaru_file[i++],false,"Killa",p1);  //Madre tierra || 35 || Luna 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[8],jaqaru_file[i++],false,"Ch’aska",p1);  //Madre tierra || 34 || Estrellas
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[9],jaqaru_file[i++],false,"Nina",p1);  //Madre tierra || 35 || Fuego 
            j=1;
          }
          //////////////////////////////////////////
          activity = 109;
          break;
        case 16:   //Submenú Quechua || Animales
          activity = 114;
          break;
        case 17:   //Submenú Quechua || Abecedario
          activity = 117;
          break;
        case 18:   //Submenú Shipibo || Saludándonos
        ///////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<6;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[3]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[3]+str(i)+".png");
              
              p1.setMediaFile("vacio.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Ointa/Jowe",p1);  //Saludandonos || 0 || Hola || Saludo
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Jaweskarin/Ointa chan",p1);  //Saludandonos || 1 || Hola || Respuesta
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Kabanon",p1);  //Saludandonos || 2 || Chau || Despedida
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Jeje(hombre)/jojo(mujer)",p1);  //Saludandonos || 3 || Chau || Respuesta de despedida
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],false,"Jaskara",p1);  //Saludandonos || 4 || Si
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],false,"Jaskarama",p1);  //Saludandonos || 5 || No
            j=1;
          }
          ///////////////////////////////////////////
          activity = 119;
          break;
        case 19:   //Submenú Shipibo || Conociéndonos
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<10;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[3]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[3]+str(i+6)+".png");
              
              p1.setMediaFile("vacio.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Jawe janerin mia?",p1);  //Conociéndonos || 6 || ¿Cuál es tu nombre?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Nokon janeriki ___",p1);  //Conociéndonos || 7 || Mi nombre es
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[1],jaqaru_file[i++],true,"¿Jaweti baritianri mia?",p1);  //Conociéndonos || 8 || ¿Cuántos años tienes?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[0],jaqaru_file[i++],true,"Eariki ___ baritia",p1);  //Conociéndonos || 9 || Yo tengo
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[1],jaqaru_file[i++],true,"¿Jawerato jemankoniarin mia?",p1);  //Conociéndonos || 10 || ¿De dónde eres?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[0],jaqaru_file[i++],true,"Eariki ___",p1);  //Conociéndonos || 11 || Yo soy de 
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Jawerano jaarin mia?",p1);  //Conociéndonos || 12 || ¿Dónde vives? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Eara jake ___",p1);  //Conociéndonos || 13 || Yo vivo en
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Jawerano kairin mia?",p1);  //Conociéndonos || 14 || ¿A dónde estás yendo? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Eara kai ___",p1);  //Conociéndonos || 15 || Estoy yendo a
            j=1;
          }
          //////////////////////////////////////////
          activity = 122;
          break;
        case 20:   //Submenú Shipibo || Estamos viviendo
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<18;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[3]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[3]+str(i+16)+".png");
              
              p1.setMediaFile("vacio.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Eara bewai",p1);  //Estamos viviendo || 16 || Yo canto 
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Eara bewake",p1);  //Estamos viviendo || 17 || To canté
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Eara bewai kai",p1);  //Estamos viviendo || 18 || Yo cantaré
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Miara bewai",p1);  //Estamos viviendo || 19 || Tú cantas
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Miara bewake",p1);  //Estamos viviendo || 20 || Tú cantaste
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Miara bewai kai",p1);  //Estamos viviendo || 21 || Tú cantarás
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Oara bewai",p1);  //Estamos viviendo || 22 || Él canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Oara bewake",p1);  //Estamos viviendo || 23 || Él cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Oara bewai kai",p1);  //Estamos viviendo || 24 || Él cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Oa ainbora bewai",p1);  //Estamos viviendo || 25 || Ella canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Oa ainbora bewake",p1);  //Estamos viviendo || 26 || Ella cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Oa ainbora bewai kai",p1);  //Estamos viviendo || 27 || Ella cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Noabora bewai",p1);  //Estamos viviendo || 28 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Noabora bewake",p1);  //Estamos viviendo || 29 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Noabora bewai kai",p1);  //Estamos viviendo || 30 || Nosotros cantaremos
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Matora bewai",p1);  //Estamos viviendo || 31 || Ustedes cantan
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Matora bewake",p1);  //Estamos viviendo || 32 || Ustedes cantaron
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Matora bewai kai",p1);  //Estamos viviendo || 33 || Ustedes cantarán
            j=1;
          }
          //////////////////////////////////////////
          activity = 127;
          break;
        case 21:   //Submenú Shipibo || Madre tierra
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<10;i++){
              //if(i<10){
                jaqaru_base[i]=loadImage(lenguas[1]+"_base"+str(i+3)+".png");
              //}
              jaqaru_file[i]=loadImage(lenguas[1]+str(i+70)+".png");
              
              p1.setMediaFile("vacio.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[0],jaqaru_file[i++],false,"Jiwi niibo",p1);  //Madre tierra || 34 || Árbol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[1],jaqaru_file[i++],false,"Paro",p1);  //Madre tierra || 35 || Río 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[2],jaqaru_file[i++],false,"Nai koin",p1);  //Madre tierra || 34 || Nubes
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[3],jaqaru_file[i++],false,"Oi",p1);  //Madre tierra || 35 || Lluvia
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[4],jaqaru_file[i++],false,"Xobo",p1);  //Madre tierra || 34 || Casa
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[5],jaqaru_file[i++],false,"Piti",p1);  //Madre tierra || 35 || Comida
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[6],jaqaru_file[i++],false,"Bari",p1);  //Madre tierra || 34 || Sol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[7],jaqaru_file[i++],false,"Oxe",p1);  //Madre tierra || 35 || Luna 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[8],jaqaru_file[i++],false,"Wishtinbo",p1);  //Madre tierra || 34 || Estrellas
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[9],jaqaru_file[i++],false,"Chií tiri",p1);  //Madre tierra || 35 || Fuego 
            j=1;
          }
          //////////////////////////////////////////
          activity = 148;
          break;
        case 22:   //Submenú Shipibo || Animales
          activity = 153;
          break;
        case 23:   //Submenú Shipibo || Abecedario
          activity = 156;
          break;
        case 24:   //Submenú Matsiguenka || Saludándonos
          ///////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<6;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[4]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[4]+str(i)+".png");
              
              p1.setMediaFile("vacio.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Ogá/Oga aiñovi",p1);  //Saludandonos || 0 || Hola || Saludo
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Je’je/neje aiñona",p1);  //Saludandonos || 1 || Hola || Respuesta
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Atana/noatavaeta",p1);  //Saludandonos || 2 || Chau || Despedida
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Nani",p1);  //Saludandonos || 3 || Chau || Respuesta de despedida
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],false,"Jeje",p1);  //Saludandonos || 4 || Si
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],false,"Tera/Gara",p1);  //Saludandonos || 5 || No
            j=1;
          }
          ///////////////////////////////////////////
          activity = 158;
          break;
        case 25:   //Submenú Matsiguenka || Conociéndonos
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<10;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[4]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[4]+str(i+6)+".png");
              
              p1.setMediaFile("vacio.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Trara pipaita?",p1);  //Conociéndonos || 6 || ¿Cuál es tu nombre?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Naro novairo onti ___",p1);  //Conociéndonos || 7 || Mi nombre es
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[1],jaqaru_file[i++],true,"¿Akati pishiriagakotanaka?",p1);  //Conociéndonos || 8 || ¿Cuántos años tienes?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[0],jaqaru_file[i++],true,"Naro noshiriagakotanaka ___ shiriagarini",p1);  //Conociéndonos || 9 || Yo tengo
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[1],jaqaru_file[i++],true,"¿Tyara piponiaka?",p1);  //Conociéndonos || 10 || ¿De dónde eres?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[0],jaqaru_file[i++],true,"Naro noponiaka ___",p1);  //Conociéndonos || 11 || Yo soy de 
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Tyara pitimi?",p1);  //Conociéndonos || 12 || ¿Dónde vives? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Naro notimi ___",p1);  //Conociéndonos || 13 || Yo vivo en
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Tyara piatanake?",p1);  //Conociéndonos || 14 || ¿A dónde estás yendo? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Noatanake anta ___",p1);  //Conociéndonos || 15 || Estoy yendo a
            j=1;
          }
          //////////////////////////////////////////
          activity = 161;
          break;
        case 26:   //Submenú Matsiguenka || Estamos viviendo
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<18;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[4]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[4]+str(i+16)+".png");
              
              p1.setMediaFile("vacio.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Naro nomatikake",p1);  //Estamos viviendo || 16 || Yo canto 
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Naro nomatikakiti",p1);  //Estamos viviendo || 17 || To canté
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Naro nomatikakerookari",p1);  //Estamos viviendo || 18 || Yo cantaré
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Viro pimatikake",p1);  //Estamos viviendo || 19 || Tú cantas
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Viro pimatikakiti",p1);  //Estamos viviendo || 20 || Tú cantaste
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Viro pimatikakerookari",p1);  //Estamos viviendo || 21 || Tú cantarás
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Iriro imatikake",p1);  //Estamos viviendo || 22 || Él canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Iriro imatikakiti",p1);  //Estamos viviendo || 23 || Él cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Iriro imatikakerookari",p1);  //Estamos viviendo || 24 || Él cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Irorori omatikake",p1);  //Estamos viviendo || 25 || Ella canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Irorori omatikakiti",p1);  //Estamos viviendo || 26 || Ella cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Irorori omatikakerookari",p1);  //Estamos viviendo || 27 || Ella cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Naroegi nomatikaigake",p1);  //Estamos viviendo || 28 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Naroegi nomatikaigakiti",p1);  //Estamos viviendo || 29 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Naroegi nomatikaigakerookari",p1);  //Estamos viviendo || 30 || Nosotros cantaremos
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Viroegi pimatikaigake",p1);  //Estamos viviendo || 31 || Ustedes cantan
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Viroegi pimatikaigakiti",p1);  //Estamos viviendo || 32 || Ustedes cantaron
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Viroegi pimatikaigakerookari",p1);  //Estamos viviendo || 33 || Ustedes cantarán
            j=1;
          }
          //////////////////////////////////////////
          activity = 166;
          break;
        case 27:   //Submenú Matsiguenka || Madre tierra
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<10;i++){
              //if(i<10){
                jaqaru_base[i]=loadImage(lenguas[1]+"_base"+str(i+3)+".png");
              //}
              jaqaru_file[i]=loadImage(lenguas[1]+str(i+70)+".png");
              
              p1.setMediaFile("vacio.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[0],jaqaru_file[i++],false,"Inchato/inkenishi",p1);  //Madre tierra || 34 || Árbol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[1],jaqaru_file[i++],false,"Eni",p1);  //Madre tierra || 35 || Río 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[2],jaqaru_file[i++],false,"Menkori",p1);  //Madre tierra || 34 || Nubes
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[3],jaqaru_file[i++],false,"Inkani",p1);  //Madre tierra || 35 || Lluvia
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[4],jaqaru_file[i++],false,"Pankotsi",p1);  //Madre tierra || 34 || Casa
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[5],jaqaru_file[i++],false,"Sekatsi",p1);  //Madre tierra || 35 || Comida
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[6],jaqaru_file[i++],false,"Poreatsiri",p1);  //Madre tierra || 34 || Sol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[7],jaqaru_file[i++],false,"Kashiri",p1);  //Madre tierra || 35 || Luna 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[8],jaqaru_file[i++],false,"Impokiro/impokiropage",p1);  //Madre tierra || 34 || Estrellas
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[9],jaqaru_file[i++],false,"Morekari",p1);  //Madre tierra || 35 || Fuego 
            j=1;
          }
          //////////////////////////////////////////
          activity = 187;
          break;
        case 28:   //Submenú Matsiguenka || Animales
          activity = 192;
          break;
        case 29:   //Submenú Matsiguenka || Abecedario
          activity = 195;
          break;
        case 30:   //Submenú Yine || Saludándonos
          ///////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<6;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[5]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[5]+str(i)+".png");
              
              p1.setMediaFile("vacio.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Galu/wiwi",p1);  //Saludandonos || 0 || Hola || Saludo
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Galu",p1);  //Saludandonos || 1 || Hola || Respuesta
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Nyatka",p1);  //Saludandonos || 2 || Chau || Despedida
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Gowu",p1);  //Saludandonos || 3 || Chau || Respuesta de despedida
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],false,"Gigi",p1);  //Saludandonos || 4 || Si
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],false,"Gike",p1);  //Saludandonos || 5 || No
            j=1;
          }
          ///////////////////////////////////////////
          activity = 197;
          break;
        case 31:   //Submenú Yine || Conociéndonos
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<10;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[5]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[5]+str(i+6)+".png");
              
              p1.setMediaFile("vacio.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Klu giwakyi?",p1);  //Conociéndonos || 6 || ¿Cuál es tu nombre?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Ngiwakni ___",p1);  //Conociéndonos || 7 || Mi nombre es
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[1],jaqaru_file[i++],true,"¿Gipejnu walapu wanenyi?",p1);  //Conociéndonos || 8 || ¿Cuántos años tienes?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[0],jaqaru_file[i++],true,"Pamyomole walapu wanenyno",p1);  //Conociéndonos || 9 || Yo tengo
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[1],jaqaru_file[i++],true,"¿Ginakgajeryi?",p1);  //Conociéndonos || 10 || ¿De dónde eres?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[0],jaqaru_file[i++],true,"Miariya gajerno gita",p1);  //Conociéndonos || 11 || Yo soy de 
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Ginaka pwa?",p1);  //Conociéndonos || 12 || ¿Dónde vives? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Gawaka sreta wa gita",p1);  //Conociéndonos || 13 || Yo vivo en
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Ginaka pyamta?",p1);  //Conociéndonos || 14 || ¿A dónde estás yendo? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Jiryegi nyamta",p1);  //Conociéndonos || 15 || Estoy yendo a
            j=1;
          }
          //////////////////////////////////////////
          activity = 200;
          break;
        case 32:   //Submenú Yine || Estamos viviendo
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<18;i++){
              if(i<3){
                jaqaru_base[i]=loadImage(lenguas[5]+"_base"+str(i)+".png");
              }
              jaqaru_file[i]=loadImage(lenguas[5]+str(i+16)+".png");
              
              p1.setMediaFile("vacio.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Nshikalewata",p1);  //Estamos viviendo || 16 || Yo canto 
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Nshikalwanata",p1);  //Estamos viviendo || 17 || To canté
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Nshikalwatanu",p1);  //Estamos viviendo || 18 || Yo cantaré
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Pshikalwatanu",p1);  //Estamos viviendo || 19 || Tú cantas
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Pshikalewanata",p1);  //Estamos viviendo || 20 || Tú cantaste
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Pshikalewatanu",p1);  //Estamos viviendo || 21 || Tú cantarás
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Wale shikalwata",p1);  //Estamos viviendo || 22 || Él canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Wale shikalewatatka",p1);  //Estamos viviendo || 23 || Él cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Wale shikalewatanu",p1);  //Estamos viviendo || 24 || Él cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Wala shikalwata",p1);  //Estamos viviendo || 25 || Ella canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Wala shikalewanata",p1);  //Estamos viviendo || 26 || Ella cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Wala shikalewatanu",p1);  //Estamos viviendo || 27 || Ella cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Wixa shikalwata",p1);  //Estamos viviendo || 28 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Wixa shikalwanata",p1);  //Estamos viviendo || 29 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Wixa shikalewatanu",p1);  //Estamos viviendo || 30 || Nosotros cantaremos
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Gixa shikalewata",p1);  //Estamos viviendo || 31 || Ustedes cantan
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Gixa shikalewanata",p1);  //Estamos viviendo || 32 || Ustedes cantaron
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Gixa shikalewatanu",p1);  //Estamos viviendo || 33 || Ustedes cantarán
            j=1;
          }
          //////////////////////////////////////////
          activity = 205;
          break;
        case 33:   //Submenú Yine || Madre tierra
          //////////////////////////////////////////
          j=0;
          if(j==0){
            for(int i=0;i<10;i++){
              //if(i<10){
                jaqaru_base[i]=loadImage(lenguas[1]+"_base"+str(i+3)+".png");
              //}
              jaqaru_file[i]=loadImage(lenguas[1]+str(i+70)+".png");
              
              p1.setMediaFile("vacio.mp3"); 
              p1.setLooping(false); 
              p1.setVolume(1.0, 1.0);
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[0],jaqaru_file[i++],false,"Kashegiru",p1);  //Madre tierra || 34 || Árbol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[1],jaqaru_file[i++],false,"Tsruru",p1);  //Madre tierra || 35 || Río 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[2],jaqaru_file[i++],false,"Kamkolu",p1);  //Madre tierra || 34 || Nubes
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[3],jaqaru_file[i++],false,"Gina",p1);  //Madre tierra || 35 || Lluvia
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[4],jaqaru_file[i++],false,"Panchi",p1);  //Madre tierra || 34 || Casa
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[5],jaqaru_file[i++],false,"Niikaluru",p1);  //Madre tierra || 35 || Comida
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[6],jaqaru_file[i++],false,"Tkachi",p1);  //Madre tierra || 34 || Sol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[7],jaqaru_file[i++],false,"Ksuru",p1);  //Madre tierra || 35 || Luna 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[8],jaqaru_file[i++],false,"Katagiri",p1);  //Madre tierra || 34 || Estrellas
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[9],jaqaru_file[i++],false,"Katalu",p1);  //Madre tierra || 35 || Fuego 
            j=1;
          }
          //////////////////////////////////////////
          activity = 226;
          break;
        case 34:   //Submenú Yine || Animales
          activity = 231;
          break;
        case 35:   //Submenú Yine || Abecedario
          activity = 234;
          break;
      }
    }
  }
 
  void display() {
    switch(ID%6){
      case 0:
        fill(104,159,56);
        break;
      case 1:
        fill(237,59,59);
        break;
      case 2:
        fill(3,155,229);
        break;
      case 3:
        fill(83,109,254);
        break;
      case 4:
        fill(153,51,102);
        break;
      case 5:
        fill(255,204,0);
        break;
    }
    noStroke();
    rect(x,y,w,h,7);
    fill(TXT);
    textFont(fontMenu);
    //textFont(fontsubMenu);
    textSize(altoGlobal/16);
    text(SUBMENU, int(x+min_x*1.5), int(y+min_y));
    textSize(altoGlobal/28);
    text(submenu, int(x+min_x*1.5), int(y+min_y*1.5));
  }
  
  void over(){
    if( overRect(x, y, w, h) ) {
      over = true;
    } else {
      over = false;
    }
  }
 
}
