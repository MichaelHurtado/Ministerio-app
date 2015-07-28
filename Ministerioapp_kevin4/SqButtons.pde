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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Kamisaraki");  //Saludandonos || 0 || Hola || Saludo
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Waliki");  //Saludandonos || 1 || Hola || Respuesta
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Jakisiñkama");  //Saludandonos || 2 || Chau || Despedida
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Jakisiñkama");  //Saludandonos || 3 || Chau || Respuesta de despedida
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],false,"Jisa");  //Saludandonos || 4 || Si
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],false,"Jani");  //Saludandonos || 5 || No
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Kunasa sutima?");  //Conociéndonos || 6 || ¿Cuál es tu nombre?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Nayana sutijaxa");  //Conociéndonos || 7 || Mi nombre es
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Qhawqha maranitasa?");  //Conociéndonos || 8 || ¿Cuántos años tienes?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Nayaxa 10 maranithwa");  //Conociéndonos || 9 || Yo tengo
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Kawkinsa utjta?");  //Conociéndonos || 10 || ¿De dónde eres?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Kawkithatasa?");  //Conociéndonos || 11 || Yo soy de 
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"");  //Conociéndonos || 12 || ¿Dónde vives? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"");  //Conociéndonos || 13 || Yo vivo en
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"");  //Conociéndonos || 14 || ¿A dónde estás yendo? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"");  //Conociéndonos || 15 || Estoy yendo a
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Naya warurt’tha");  //Estamos viviendo || 16 || Yo canto 
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Naya warurt’awtha");  //Estamos viviendo || 17 || To canté
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Naya warurt’äja");  //Estamos viviendo || 18 || Yo cantaré
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Juma warurt’ta");  //Estamos viviendo || 19 || Tú cantas
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Juma warurt’awta");  //Estamos viviendo || 20 || Tú cantaste
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Juma warurt’äta");  //Estamos viviendo || 21 || Tú cantarás
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Jupa warurt’i");  //Estamos viviendo || 22 || Él canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Jupa warurt’awi");  //Estamos viviendo || 23 || Él cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Jupa  warurt’äni");  //Estamos viviendo || 24 || Él cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Jupa warurt’i");  //Estamos viviendo || 25 || Ella canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Jupa warurt’awi");  //Estamos viviendo || 26 || Ella cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Jupa warurt’ani");  //Estamos viviendo || 27 || Ella cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Jiwasa warurt’tana");  //Estamos viviendo || 28 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Jiwasa warurt’awtana");  //Estamos viviendo || 29 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Jiwasa warurt’añani");  //Estamos viviendo || 30 || Nosotros cantaremos
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Jumanaka warurt’apxta");  //Estamos viviendo || 31 || Ustedes cantan
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Jumanaka warurt’awapxta");  //Estamos viviendo || 32 || Ustedes cantaron
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Jumanaka warurt’awapxata");  //Estamos viviendo || 33 || Ustedes cantarán
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[0],jaqaru_file[i++],false,"Quqa");  //Madre tierra || 34 || Árbol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[1],jaqaru_file[i++],false,"Jawira");  //Madre tierra || 35 || Río 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[2],jaqaru_file[i++],false,"Qinaya");  //Madre tierra || 34 || Nubes
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[3],jaqaru_file[i++],false,"Jallu");  //Madre tierra || 35 || Lluvia
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[4],jaqaru_file[i++],false,"Uta");  //Madre tierra || 34 || Casa
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[5],jaqaru_file[i++],false,"Manq’a");  //Madre tierra || 35 || Comida
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[6],jaqaru_file[i++],false,"Inti/lupi/willka");  //Madre tierra || 34 || Sol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[7],jaqaru_file[i++],false,"Phaxsi");  //Madre tierra || 35 || Luna 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[8],jaqaru_file[i++],false,"Warawara");  //Madre tierra || 34 || Estrellas
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[9],jaqaru_file[i++],false,"Nina");  //Madre tierra || 35 || Fuego 
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Amruchatxi?");  //Saludandonos || 0 || Hola || Saludo
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Amruchawa");  //Saludandonos || 1 || Hola || Respuesta
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Maqktkaswa");  //Saludandonos || 2 || Chau || Despedida
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Amruch maqmata");  //Saludandonos || 3 || Chau || Respuesta de despedida
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],false,"Jawilli");  //Saludandonos || 4 || Si
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],false,"Ishawa");  //Saludandonos || 5 || No
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Quwas shutxim?");  //Conociéndonos || 6 || ¿Cuál es tu nombre?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Shutxinhq ___ wa");  //Conociéndonos || 7 || Mi nombre es
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Ayk watawtasa?");  //Conociéndonos || 8 || ¿Cuántos años tienes?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Naq 10 watawt’wa");  //Conociéndonos || 9 || Yo tengo
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Qawinas jakkta?");  //Conociéndonos || 10 || ¿De dónde eres?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"¿Qawit’  jaqiwtasa?");  //Conociéndonos || 11 || Yo soy de 
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"");  //Conociéndonos || 12 || ¿Dónde vives? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"");  //Conociéndonos || 13 || Yo vivo en
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"");  //Conociéndonos || 14 || ¿A dónde estás yendo? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"");  //Conociéndonos || 15 || Estoy yendo a
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Na kantkt’a");  //Estamos viviendo || 16 || Yo canto 
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Na kantawt’a");  //Estamos viviendo || 17 || To canté
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Na kantanha");  //Estamos viviendo || 18 || Yo cantaré
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Juma Kantkta");  //Estamos viviendo || 19 || Tú cantas
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Juma kantawta");  //Estamos viviendo || 20 || Tú cantaste
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Juma kantmata");  //Estamos viviendo || 21 || Tú cantarás
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Upa kantki");  //Estamos viviendo || 22 || Él canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Upa kantawi");  //Estamos viviendo || 23 || Él cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Upa kantani");  //Estamos viviendo || 24 || Él cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Jiwsa kantktna");  //Estamos viviendo || 25 || Ella canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Jiwsa kantawtna");  //Estamos viviendo || 26 || Ella cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Jiwsa kantatna");  //Estamos viviendo || 27 || Ella cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Jumkuna kantkta");  //Estamos viviendo || 28 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Jumkuna kantawta");  //Estamos viviendo || 29 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Jumkuna kantmata");  //Estamos viviendo || 30 || Nosotros cantaremos
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Upkuna kantki");  //Estamos viviendo || 31 || Ustedes cantan
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Upkuna kantawi");  //Estamos viviendo || 32 || Ustedes cantaron
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Upkuna kantani");  //Estamos viviendo || 33 || Ustedes cantarán
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[0],jaqaru_file[i++],false,"Ajtz’ munti");  //Madre tierra || 34 || Árbol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[1],jaqaru_file[i++],false,"Mayu");  //Madre tierra || 35 || Río 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[2],jaqaru_file[i++],false,"Urpi");  //Madre tierra || 34 || Nubes
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[3],jaqaru_file[i++],false,"Jallu");  //Madre tierra || 35 || Lluvia
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[4],jaqaru_file[i++],false,"Uta");  //Madre tierra || 34 || Casa
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[5],jaqaru_file[i++],false,"Putaka");  //Madre tierra || 35 || Comida
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[6],jaqaru_file[i++],false,"Inti");  //Madre tierra || 34 || Sol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[7],jaqaru_file[i++],false,"Pajshi");  //Madre tierra || 35 || Luna 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[8],jaqaru_file[i++],false,"Waraja");  //Madre tierra || 34 || Estrellas
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[9],jaqaru_file[i++],false,"Nina");  //Madre tierra || 35 || Fuego 
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Allillanchu/imaynalla");  //Saludandonos || 0 || Hola || Saludo
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Allillanmi/sumaqlla");  //Saludandonos || 1 || Hola || Respuesta
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Kutimunaykama/huk kutinkama");  //Saludandonos || 2 || Chau || Despedida
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Tupananchikkama/tupasunña");  //Saludandonos || 3 || Chau || Respuesta de despedida
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],false,"Arí");  //Saludandonos || 4 || Si
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],false,"Manam");  //Saludandonos || 5 || No
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Iman sutiyki?");  //Conociéndonos || 6 || ¿Cuál es tu nombre?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"sutiyqa ___");  //Conociéndonos || 7 || Mi nombre es
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[1],jaqaru_file[i++],true,"¿Hayk’a watayuqmi kachkanki?");  //Conociéndonos || 8 || ¿Cuántos años tienes?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[0],jaqaru_file[i++],true,"10 watayuq");  //Conociéndonos || 9 || Yo tengo
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Maypi Tiyanki?");  //Conociéndonos || 10 || ¿De dónde eres?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"¿Maymanta kanki?");  //Conociéndonos || 11 || Yo soy de 
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"");  //Conociéndonos || 12 || ¿Dónde vives? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"");  //Conociéndonos || 13 || Yo vivo en
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"");  //Conociéndonos || 14 || ¿A dónde estás yendo? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"");  //Conociéndonos || 15 || Estoy yendo a
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Ñuqam takichkani/takini");  //Estamos viviendo || 16 || Yo canto 
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Ñuqam takimurqani");  //Estamos viviendo || 17 || To canté
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Qam takimusaq");  //Estamos viviendo || 18 || Yo cantaré
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Qam takichkanki");  //Estamos viviendo || 19 || Tú cantas
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Qam takirqanki");  //Estamos viviendo || 20 || Tú cantaste
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Qam takinki");  //Estamos viviendo || 21 || Tú cantarás
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Pay takichkan/takin");  //Estamos viviendo || 22 || Él canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Pay takirqam");  //Estamos viviendo || 23 || Él cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Pay takinqa");  //Estamos viviendo || 24 || Él cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Pay takichkan/takin");  //Estamos viviendo || 25 || Ella canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Pay takirqam");  //Estamos viviendo || 26 || Ella cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Pay takinqa");  //Estamos viviendo || 27 || Ella cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Ñuqanchik takinchik");  //Estamos viviendo || 28 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Ñuqanchik takirqanchik");  //Estamos viviendo || 29 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Ñuqanchik takisunchik");  //Estamos viviendo || 30 || Nosotros cantaremos
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Qamkuna takichkankichik");  //Estamos viviendo || 31 || Ustedes cantan
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Qamkuna takirqankichik");  //Estamos viviendo || 32 || Ustedes cantaron
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Qamkuna takinkichik");  //Estamos viviendo || 33 || Ustedes cantarán
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[0],jaqaru_file[i++],false,"Mallki");  //Madre tierra || 34 || Árbol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[1],jaqaru_file[i++],false,"Mayu");  //Madre tierra || 35 || Río 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[2],jaqaru_file[i++],false,"Phuyu");  //Madre tierra || 34 || Nubes
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[3],jaqaru_file[i++],false,"Para");  //Madre tierra || 35 || Lluvia
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[4],jaqaru_file[i++],false,"Wasi");  //Madre tierra || 34 || Casa
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[5],jaqaru_file[i++],false,"Mikhuna");  //Madre tierra || 35 || Comida
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[6],jaqaru_file[i++],false,"Inti");  //Madre tierra || 34 || Sol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[7],jaqaru_file[i++],false,"Killa");  //Madre tierra || 35 || Luna 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[8],jaqaru_file[i++],false,"Ch’aska");  //Madre tierra || 34 || Estrellas
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[9],jaqaru_file[i++],false,"Nina");  //Madre tierra || 35 || Fuego 
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Ointa/Jowe");  //Saludandonos || 0 || Hola || Saludo
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Jaweskarin/Ointa chan");  //Saludandonos || 1 || Hola || Respuesta
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Kabanon");  //Saludandonos || 2 || Chau || Despedida
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Jeje(hombre)/jojo(mujer)");  //Saludandonos || 3 || Chau || Respuesta de despedida
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],false,"Jaskara");  //Saludandonos || 4 || Si
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],false,"Jaskarama");  //Saludandonos || 5 || No
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Jawe janerin mia?");  //Conociéndonos || 6 || ¿Cuál es tu nombre?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Nokon janeriki");  //Conociéndonos || 7 || Mi nombre es
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Jaweti baritianri mia?");  //Conociéndonos || 8 || ¿Cuántos años tienes?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Eariki 10 baritia");  //Conociéndonos || 9 || Yo tengo
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Jawerano jaarin mia?");  //Conociéndonos || 10 || ¿De dónde eres?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"¿Jawerato jemankoniarin mia?");  //Conociéndonos || 11 || Yo soy de 
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"");  //Conociéndonos || 12 || ¿Dónde vives? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"");  //Conociéndonos || 13 || Yo vivo en
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"");  //Conociéndonos || 14 || ¿A dónde estás yendo? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"");  //Conociéndonos || 15 || Estoy yendo a
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Eara bewai");  //Estamos viviendo || 16 || Yo canto 
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Eara bewake");  //Estamos viviendo || 17 || To canté
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Eara bewai kai");  //Estamos viviendo || 18 || Yo cantaré
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Miara bewai");  //Estamos viviendo || 19 || Tú cantas
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Miara bewake");  //Estamos viviendo || 20 || Tú cantaste
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Miara bewai kai");  //Estamos viviendo || 21 || Tú cantarás
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Oara bewai");  //Estamos viviendo || 22 || Él canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Oara bewake");  //Estamos viviendo || 23 || Él cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Oara bewai kai");  //Estamos viviendo || 24 || Él cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Oa ainbora bewai");  //Estamos viviendo || 25 || Ella canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Oa ainbora bewake");  //Estamos viviendo || 26 || Ella cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Oa ainbora bewai kai");  //Estamos viviendo || 27 || Ella cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Noabora bewai");  //Estamos viviendo || 28 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Noabora bewake");  //Estamos viviendo || 29 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Noabora bewai kai");  //Estamos viviendo || 30 || Nosotros cantaremos
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Matora bewai");  //Estamos viviendo || 31 || Ustedes cantan
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Matora bewake");  //Estamos viviendo || 32 || Ustedes cantaron
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Matora bewai kai");  //Estamos viviendo || 33 || Ustedes cantarán
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[0],jaqaru_file[i++],false,"Jiwi niibo");  //Madre tierra || 34 || Árbol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[1],jaqaru_file[i++],false,"Paro");  //Madre tierra || 35 || Río 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[2],jaqaru_file[i++],false,"Nai koin");  //Madre tierra || 34 || Nubes
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[3],jaqaru_file[i++],false,"Oi");  //Madre tierra || 35 || Lluvia
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[4],jaqaru_file[i++],false,"Xobo");  //Madre tierra || 34 || Casa
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[5],jaqaru_file[i++],false,"Piti");  //Madre tierra || 35 || Comida
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[6],jaqaru_file[i++],false,"Bari");  //Madre tierra || 34 || Sol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[7],jaqaru_file[i++],false,"Oxe");  //Madre tierra || 35 || Luna 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[8],jaqaru_file[i++],false,"Wishtinbo");  //Madre tierra || 34 || Estrellas
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[9],jaqaru_file[i++],false,"Chií tiri");  //Madre tierra || 35 || Fuego 
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Ogá/Oga aiñovi");  //Saludandonos || 0 || Hola || Saludo
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Je’je/neje aiñona");  //Saludandonos || 1 || Hola || Respuesta
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Atana/noatavaeta");  //Saludandonos || 2 || Chau || Despedida
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Nani");  //Saludandonos || 3 || Chau || Respuesta de despedida
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],false,"Jeje");  //Saludandonos || 4 || Si
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],false,"Tera/Gara");  //Saludandonos || 5 || No
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Trara pipaita?");  //Conociéndonos || 6 || ¿Cuál es tu nombre?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Naro novairo onti ___");  //Conociéndonos || 7 || Mi nombre es
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Akati pishiriagakotanaka?");  //Conociéndonos || 8 || ¿Cuántos años tienes?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Naro noshiriagakotanaka 10 shiriagarini");  //Conociéndonos || 9 || Yo tengo
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"¿Tyara pitimi?");  //Conociéndonos || 10 || ¿De dónde eres?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"¿Tyara piponiaka?");  //Conociéndonos || 11 || Yo soy de 
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"");  //Conociéndonos || 12 || ¿Dónde vives? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"");  //Conociéndonos || 13 || Yo vivo en
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"");  //Conociéndonos || 14 || ¿A dónde estás yendo? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"");  //Conociéndonos || 15 || Estoy yendo a
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Naro nomatikake");  //Estamos viviendo || 16 || Yo canto 
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Naro nomatikakiti");  //Estamos viviendo || 17 || To canté
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Naro nomatikakerookari");  //Estamos viviendo || 18 || Yo cantaré
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Viro pimatikake");  //Estamos viviendo || 19 || Tú cantas
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Viro pimatikakiti");  //Estamos viviendo || 20 || Tú cantaste
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Viro pimatikakerookari");  //Estamos viviendo || 21 || Tú cantarás
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Iriro imatikake");  //Estamos viviendo || 22 || Él canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Iriro imatikakiti");  //Estamos viviendo || 23 || Él cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Iriro imatikakerookari");  //Estamos viviendo || 24 || Él cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Irorori omatikake");  //Estamos viviendo || 25 || Ella canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Irorori omatikakiti");  //Estamos viviendo || 26 || Ella cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Irorori omatikakerookari");  //Estamos viviendo || 27 || Ella cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Naroegi nomatikaigake");  //Estamos viviendo || 28 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Naroegi nomatikaigakiti");  //Estamos viviendo || 29 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Naroegi nomatikaigakerookari");  //Estamos viviendo || 30 || Nosotros cantaremos
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Viroegi pimatikaigake");  //Estamos viviendo || 31 || Ustedes cantan
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Viroegi pimatikaigakiti");  //Estamos viviendo || 32 || Ustedes cantaron
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Viroegi pimatikaigakerookari");  //Estamos viviendo || 33 || Ustedes cantarán
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[0],jaqaru_file[i++],false,"Inchato/inkenishi");  //Madre tierra || 34 || Árbol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[1],jaqaru_file[i++],false,"Eni");  //Madre tierra || 35 || Río 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[2],jaqaru_file[i++],false,"Menkori");  //Madre tierra || 34 || Nubes
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[3],jaqaru_file[i++],false,"Inkani");  //Madre tierra || 35 || Lluvia
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[4],jaqaru_file[i++],false,"Pankotsi");  //Madre tierra || 34 || Casa
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[5],jaqaru_file[i++],false,"Sekatsi");  //Madre tierra || 35 || Comida
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[6],jaqaru_file[i++],false,"Poreatsiri");  //Madre tierra || 34 || Sol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[7],jaqaru_file[i++],false,"Kashiri");  //Madre tierra || 35 || Luna 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[8],jaqaru_file[i++],false,"Impokiro/impokiropage");  //Madre tierra || 34 || Estrellas
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[9],jaqaru_file[i++],false,"Morekari");  //Madre tierra || 35 || Fuego 
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Galu/wiwi");  //Saludandonos || 0 || Hola || Saludo
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Galu");  //Saludandonos || 1 || Hola || Respuesta
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"Nyatka");  //Saludandonos || 2 || Chau || Despedida
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"Gowu");  //Saludandonos || 3 || Chau || Respuesta de despedida
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],false,"Gigi");  //Saludandonos || 4 || Si
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],false,"Gike");  //Saludandonos || 5 || No
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"");  //Conociéndonos || 6 || ¿Cuál es tu nombre?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"");  //Conociéndonos || 7 || Mi nombre es
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"");  //Conociéndonos || 8 || ¿Cuántos años tienes?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"");  //Conociéndonos || 9 || Yo tengo
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"");  //Conociéndonos || 10 || ¿De dónde eres?
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"");  //Conociéndonos || 11 || Yo soy de 
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"");  //Conociéndonos || 12 || ¿Dónde vives? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"");  //Conociéndonos || 13 || Yo vivo en
            contenidoButtons[i] = new ImageButtons(i,0,0,jaqaru_base[0],jaqaru_file[i++],true,"");  //Conociéndonos || 14 || ¿A dónde estás yendo? 
            contenidoButtons[i] = new ImageButtons(i,0,1,jaqaru_base[1],jaqaru_file[i++],true,"");  //Conociéndonos || 15 || Estoy yendo a
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Nshikalewata");  //Estamos viviendo || 16 || Yo canto 
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Nshikalwanata");  //Estamos viviendo || 17 || To canté
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Nshikalwatanu");  //Estamos viviendo || 18 || Yo cantaré
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Pshikalwatanu");  //Estamos viviendo || 19 || Tú cantas
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Pshikalewanata");  //Estamos viviendo || 20 || Tú cantaste
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Pshikalewatanu");  //Estamos viviendo || 21 || Tú cantarás
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Wale shikalwata");  //Estamos viviendo || 22 || Él canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Wale shikalewatatka");  //Estamos viviendo || 23 || Él cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Wale shikalewatanu");  //Estamos viviendo || 24 || Él cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Wala shikalwata");  //Estamos viviendo || 25 || Ella canta
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Wala shikalewanata");  //Estamos viviendo || 26 || Ella cantó
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Wala shikalewatanu");  //Estamos viviendo || 27 || Ella cantará
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Wixa shikalwata");  //Estamos viviendo || 28 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Wixa shikalwanata");  //Estamos viviendo || 29 || Nosotros cantamos
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Wixa shikalewatanu");  //Estamos viviendo || 30 || Nosotros cantaremos
            contenidoButtons[i] = new ImageButtons(i,1,0,jaqaru_base[0],jaqaru_file[i++],false,"Gixa shikalewata");  //Estamos viviendo || 31 || Ustedes cantan
            contenidoButtons[i] = new ImageButtons(i,1,1,jaqaru_base[1],jaqaru_file[i++],false,"Gixa shikalewanata");  //Estamos viviendo || 32 || Ustedes cantaron
            contenidoButtons[i] = new ImageButtons(i,1,2,jaqaru_base[2],jaqaru_file[i++],false,"Gixa shikalewatanu");  //Estamos viviendo || 33 || Ustedes cantarán
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
            }
            int i=0;
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[0],jaqaru_file[i++],false,"Kashegiru");  //Madre tierra || 34 || Árbol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[1],jaqaru_file[i++],false,"Tsruru");  //Madre tierra || 35 || Río 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[2],jaqaru_file[i++],false,"Kamkolu");  //Madre tierra || 34 || Nubes
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[3],jaqaru_file[i++],false,"Gina");  //Madre tierra || 35 || Lluvia
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[4],jaqaru_file[i++],false,"Panchi");  //Madre tierra || 34 || Casa
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[5],jaqaru_file[i++],false,"Niikaluru");  //Madre tierra || 35 || Comida
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[6],jaqaru_file[i++],false,"Tkachi");  //Madre tierra || 34 || Sol
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[7],jaqaru_file[i++],false,"Ksuru");  //Madre tierra || 35 || Luna 
            contenidoButtons[i] = new ImageButtons(i,2,0,jaqaru_base[8],jaqaru_file[i++],false,"Katagiri");  //Madre tierra || 34 || Estrellas
            contenidoButtons[i] = new ImageButtons(i,2,1,jaqaru_base[9],jaqaru_file[i++],false,"Katalu");  //Madre tierra || 35 || Fuego 
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
