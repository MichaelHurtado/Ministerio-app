/*
lengua0=aymara
lengua1=jaqaru
lengua2=quechua
lengua3=shipibo
lengua4=matshiguenka
lengua5=yine
*/

PFont fontMenu;
PImage imagenMin;
PImage imagenIntro;

String[] lenguas = {"Aymara","Jaqaru","Quechua","Shipibo","Matsiguenka","Yine"}; 
boolean intro = true;

float anchoGlobal;
float altoGlobal;

int n=6;
int activity = 0;

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
  imagenMin=loadImage("mincultura.png");
  imagenIntro=loadImage("nombre.png");
  orientation(LANDSCAPE);
  
  for(int i=0;i<file.length;i++){
    file[i]=loadImage("lengua"+str(i)+".png");
    alfa[i]=escalador[i]*anchoGlobal/(8*file[i].width);
    menuButtons[i] = new ImageButtons(i,0,int(((3+2*i)*anchoGlobal/16)-(alfa[i]*file[i].width)/2),int(modificadorvert[i]*((altoGlobal/2)-(alfa[i]*file[i].height)/2)),int(alfa[i]*file[i].width),int(alfa[i]*file[i].height),file[i],file[i]); 
  }
  fontMenu = loadFont("Haettenschweiler-48.vlw");
}

void draw(){
  switch(activity){
    case 0:    // Menú principial ||Jaqaru Aymara Matsiguenka Quechua Shipibo Yine
        //Función de entrada
        if (intro) {
            if(millis()<2000){
              background(0);
              imageMode(CENTER);
              image(imagenMin,anchoGlobal/2,altoGlobal/2,imagenMin.width*anchoGlobal/1360,imagenMin.height*anchoGlobal/1360);
              imageMode(CORNER);
            }
            else if(millis()<3000){
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
          for(int i=0;i<lenguas.length;i++){
            text(lenguas[i],factorDesp[i]*int(((3+2*i)*anchoGlobal/16)-(alfa[i]*file[i].width)/2),int((1.1*(altoGlobal/2)+(alfa[1]*file[1].height)/2)));  
          }
          for(int i=0;i<menuButtons.length;i++){
            menuButtons[i].update();
            menuButtons[i].display();   
          }
        }
      break;
    case 1:    // Submenú || Aymara
      background(238);
      text("Submenú Aymara",anchoGlobal/2,altoGlobal/2);
      break; 
    case 2:    // Submenú || Aymara || Saludándonos || 1
      break;
    case 3:    // Submenú || Aymara || Saludándonos || 2
      break;
    case 4:    // Submenú || Aymara || Saludándonos || 3
      break;
    case 5:    // Submenú || Aymara || Conociendonos || 1
      break;
    case 6:    // Submenú || Aymara || Conociendonos || 2
      break;
    case 7:    // Submenú || Aymara || Conociendonos || 3
      break;
    case 8:    // Submenú || Aymara || Conociendonos || 4
      break;
    case 9:    // Submenú || Aymara || Conociendonos || 5
      break;
    case 10:   // Submenú || Aymara || Verbo: Cantar || 1
      break;
    case 11:   // Submenú || Aymara || Verbo: Cantar || 2
      break;
    case 12:   // Submenú || Aymara || Verbo: Cantar || 3
      break;
    case 13:   // Submenú || Aymara || Verbo: Cantar || 4
      break;
    case 14:   // Submenú || Aymara || Verbo: Cantar || 5
      break;
    case 15:   // Submenú || Aymara || Verbo: Cantar || 6
      break;
    case 16:   // Submenú || Aymara || Verbo: Cantar || 7
      break;
    case 17:   // Submenú || Aymara || Verbo: Caminar || 1
      break;
    case 18:   // Submenú || Aymara || Verbo: Caminar || 2
      break;
    case 19:   // Submenú || Aymara || Verbo: Caminar || 3
      break;
    case 20:   // Submenú || Aymara || Verbo: Caminar || 4
      break;
    case 21:   // Submenú || Aymara || Verbo: Caminar || 5
      break;
    case 22:   // Submenú || Aymara || Verbo: Caminar || 6
      break;
    case 23:   // Submenú || Aymara || Verbo: Caminar || 7
      break;
    case 24:   // Submenú || Aymara || Verbo: Comer || 1
      break;
    case 25:   // Submenú || Aymara || Verbo: Comer || 2
      break;
    case 26:   // Submenú || Aymara || Verbo: Comer || 3
      break;
    case 27:   // Submenú || Aymara || Verbo: Comer || 4
      break;
    case 28:   // Submenú || Aymara || Verbo: Comer || 5
      break;
    case 29:   // Submenú || Aymara || Verbo: Comer || 6
      break;
    case 30:   // Submenú || Aymara || Verbo: Comer || 7
      break;
    case 31:   // Submenú || Aymara || Madre tierra || 1
      break;
    case 32:   // Submenú || Aymara || Madre tierra || 2
      break;
    case 33:   // Submenú || Aymara || Madre tierra || 3
      break;
    case 34:   // Submenú || Aymara || Madre tierra || 4
      break;
    case 35:   // Submenú || Aymara || Madre tierra || 5
      break;
    case 36:   // Submenú || Aymara || Animales || 1
      break;
    case 37:   // Submenú || Aymara || Animales || 2
      break;
    case 38:   // Submenú || Aymara || Animales || 3
      break;
    case 39:   // Submenú || Aymara || Abecedario || 1
      break;
    case 40:   // Submenú || Aymara
      background(255,0,0);
      text("Submenú Jaqaru",anchoGlobal/2,altoGlobal/2);
      break; 
    case 41:   // Submenú || Jaqaru || Saludándonos || 1
      break;
    case 42:   // Submenú || Jaqaru || Saludándonos || 2
      break;
    case 43:   // Submenú || Jaqaru || Saludándonos || 3
      break;
    case 44:   // Submenú || Jaqaru || Conociendonos || 1
      break;
    case 45:   // Submenú || Jaqaru || Conociendonos || 2
      break;
    case 46:   // Submenú || Jaqaru || Conociendonos || 3
      break;
    case 47:   // Submenú || Jaqaru || Conociendonos || 4
      break;
    case 48:   // Submenú || Jaqaru || Conociendonos || 5
      break;
    case 49:   // Submenú || Jaqaru || Verbo: Cantar || 1
      break;
    case 50:   // Submenú || Jaqaru || Verbo: Cantar || 2
      break;
    case 51:   // Submenú || Jaqaru || Verbo: Cantar || 3
      break;
    case 52:   // Submenú || Jaqaru || Verbo: Cantar || 4
      break;
    case 53:   // Submenú || Jaqaru || Verbo: Cantar || 5
      break;
    case 54:   // Submenú || Jaqaru || Verbo: Cantar || 6
      break;
    case 55:   // Submenú || Jaqaru || Verbo: Cantar || 7
      break;
    case 56:   // Submenú || Jaqaru || Verbo: Caminar || 1
      break;
    case 57:   // Submenú || Jaqaru || Verbo: Caminar || 2
      break;
    case 58:   // Submenú || Jaqaru || Verbo: Caminar || 3
      break;
    case 59:   // Submenú || Jaqaru || Verbo: Caminar || 4
      break;
    case 60:   // Submenú || Jaqaru || Verbo: Caminar || 5
      break;
    case 61:   // Submenú || Jaqaru || Verbo: Caminar || 6
      break;
    case 62:   // Submenú || Jaqaru || Verbo: Caminar || 7
      break;
    case 63:   // Submenú || Jaqaru || Verbo: Comer || 1
      break;
    case 64:   // Submenú || Jaqaru || Verbo: Comer || 2
      break;
    case 65:   // Submenú || Jaqaru || Verbo: Comer || 3
      break;
    case 66:   // Submenú || Jaqaru || Verbo: Comer || 4
      break;
    case 67:   // Submenú || Jaqaru || Verbo: Comer || 5
      break;
    case 68:   // Submenú || Jaqaru || Verbo: Comer || 6
      break;
    case 69:   // Submenú || Jaqaru || Verbo: Comer || 7
      break;
    case 70:   // Submenú || Jaqaru || Madre tierra || 1
      break;
    case 71:   // Submenú || Jaqaru || Madre tierra || 2
      break;
    case 72:   // Submenú || Jaqaru || Madre tierra || 3
      break;
    case 73:   // Submenú || Jaqaru || Madre tierra || 4
      break;
    case 74:   // Submenú || Jaqaru || Madre tierra || 5
      break;
    case 75:   // Submenú || Jaqaru || Animales || 1
      break;
    case 76:   // Submenú || Jaqaru || Animales || 2
      break;
    case 77:   // Submenú || Jaqaru || Animales || 3
      break;
    case 78:   // Submenú || Jaqaru || Abecedario || 1
      break;
    case 79:   // Submenú || Matsiguenka
      background(255,0,0);
      text("Submenú Quechua",anchoGlobal/2,altoGlobal/2);
      break; 
    case 80:   // Submenú || Quechua || Saludándonos || 1
      break;
    case 81:   // Submenú || Quechua || Saludándonos || 2
      break;
    case 82:   // Submenú || Quechua || Saludándonos || 3
      break;
    case 83:   // Submenú || Quechua || Conociendonos || 1
      break;
    case 84:   // Submenú || Quechua || Conociendonos || 2
      break;
    case 85:   // Submenú || Quechua || Conociendonos || 3
      break;
    case 86:   // Submenú || Quechua || Conociendonos || 4
      break;
    case 87:   // Submenú || Quechua || Conociendonos || 5
      break;
    case 88:   // Submenú || Quechua || Verbo: Cantar || 1
      break;
    case 89:   // Submenú || Quechua || Verbo: Cantar || 2
      break;
    case 90:   // Submenú || Quechua || Verbo: Cantar || 3
      break;
    case 91:   // Submenú || Quechua || Verbo: Cantar || 4
      break;
    case 92:   // Submenú || Quechua || Verbo: Cantar || 5
      break;
    case 93:   // Submenú || Quechua || Verbo: Cantar || 6
      break;
    case 94:   // Submenú || Quechua || Verbo: Cantar || 7
      break;
    case 95:   // Submenú || Quechua || Verbo: Caminar || 1
      break;
    case 96:   // Submenú || Quechua || Verbo: Caminar || 2
      break;
    case 97:   // Submenú || Quechua || Verbo: Caminar || 3
      break;
    case 98:   // Submenú || Quechua || Verbo: Caminar || 4
      break;
    case 99:   // Submenú || Quechua || Verbo: Caminar || 5
      break;
    case 100:  // Submenú || Quechua || Verbo: Caminar || 6
      break;
    case 101:  // Submenú || Quechua || Verbo: Caminar || 7
      break;
    case 102:  // Submenú || Quechua || Verbo: Comer || 1
      break;
    case 103:  // Submenú || Quechua || Verbo: Comer || 2
      break;
    case 104:  // Submenú || Quechua || Verbo: Comer || 3
      break;
    case 105:  // Submenú || Quechua || Verbo: Comer || 4
      break;
    case 106:  // Submenú || Quechua || Verbo: Comer || 5
      break;
    case 107:  // Submenú || Quechua || Verbo: Comer || 6
      break;
    case 108:  // Submenú || Quechua || Verbo: Comer || 7
      break;
    case 109:  // Submenú || Quechua || Madre tierra || 1
      break;
    case 110:  // Submenú || Quechua || Madre tierra || 2
      break;
    case 111:  // Submenú || Quechua || Madre tierra || 3
      break;
    case 112:  // Submenú || Quechua || Madre tierra || 4
      break;
    case 113:  // Submenú || Quechua || Madre tierra || 5
      break;
    case 114:  // Submenú || Quechua || Animales || 1
      break;
    case 115:  // Submenú || Quechua || Animales || 2
      break;
    case 116:  // Submenú || Quechua || Animales || 3
      break;
    case 117:  // Submenú || Quechua || Abecedario || 1
      break;
    case 118:  // Submenú || Shipibo
      background(255,0,0);
      text("Submenú Shipibo",anchoGlobal/2,altoGlobal/2);
      break; 
    case 119:  // Submenú || Shipibo || Saludándonos || 1
      break;
    case 120:  // Submenú || Shipibo || Saludándonos || 2
      break;
    case 121:  // Submenú || Shipibo || Saludándonos || 3
      break;
    case 122:  // Submenú || Shipibo || Conociendonos || 1
      break;
    case 123:  // Submenú || Shipibo || Conociendonos || 2
      break;
    case 124:  // Submenú || Shipibo || Conociendonos || 3
      break;
    case 125:  // Submenú || Shipibo || Conociendonos || 4
      break;
    case 126:  // Submenú || Shipibo || Conociendonos || 5
      break;
    case 127:  // Submenú || Shipibo || Verbo: Cantar || 1
      break;
    case 128:  // Submenú || Shipibo || Verbo: Cantar || 2
      break;
    case 129:  // Submenú || Shipibo || Verbo: Cantar || 3
      break;
    case 130:  // Submenú || Shipibo || Verbo: Cantar || 4
      break;
    case 131:  // Submenú || Shipibo || Verbo: Cantar || 5
      break;
    case 132:  // Submenú || Shipibo || Verbo: Cantar || 6
      break;
    case 133:  // Submenú || Shipibo || Verbo: Cantar || 7
      break;
    case 134:  // Submenú || Shipibo || Verbo: Caminar || 1
      break;
    case 135:  // Submenú || Shipibo || Verbo: Caminar || 2
      break;
    case 136:  // Submenú || Shipibo || Verbo: Caminar || 3
      break;
    case 137:  // Submenú || Shipibo || Verbo: Caminar || 4
      break;
    case 138:  // Submenú || Shipibo || Verbo: Caminar || 5
      break;
    case 139:  // Submenú || Shipibo || Verbo: Caminar || 6
      break;
    case 140:  // Submenú || Shipibo || Verbo: Caminar || 7
      break;
    case 141:  // Submenú || Shipibo || Verbo: Comer || 1
      break;
    case 142:  // Submenú || Shipibo || Verbo: Comer || 2
      break;
    case 143:  // Submenú || Shipibo || Verbo: Comer || 3
      break;
    case 144:  // Submenú || Shipibo || Verbo: Comer || 4
      break;
    case 145:  // Submenú || Shipibo || Verbo: Comer || 5
      break;
    case 146:  // Submenú || Shipibo || Verbo: Comer || 6
      break;
    case 147:  // Submenú || Shipibo || Verbo: Comer || 7
      break;
    case 148:  // Submenú || Shipibo || Madre tierra || 1
      break;
    case 149:  // Submenú || Shipibo || Madre tierra || 2
      break;
    case 150:  // Submenú || Shipibo || Madre tierra || 3
      break;
    case 151:  // Submenú || Shipibo || Madre tierra || 4
      break;
    case 152:  // Submenú || Shipibo || Madre tierra || 5
      break;
    case 153:  // Submenú || Shipibo || Animales || 1
      break;
    case 154:  // Submenú || Shipibo || Animales || 2
      break;
    case 155:  // Submenú || Shipibo || Animales || 3
      break;
    case 156:  // Submenú || Shipibo || Abecedario || 1
      break;
    case 157:  // Submenú || Matsiguenka
      background(255,0,0);
      text("Submenú Matsiguenka",anchoGlobal/2,altoGlobal/2);
      break; 
    case 158:  // Submenú || Matsiguenka || Saludándonos || 1
      break;
    case 159:  // Submenú || Matsiguenka || Saludándonos || 2
      break;
    case 160:  // Submenú || Matsiguenka || Saludándonos || 3
      break;
    case 161:  // Submenú || Matsiguenka || Conociendonos || 1
      break;
    case 162:  // Submenú || Matsiguenka || Conociendonos || 2
      break;
    case 163:  // Submenú || Matsiguenka || Conociendonos || 3
      break;
    case 164:  // Submenú || Matsiguenka || Conociendonos || 4
      break;
    case 165:  // Submenú || Matsiguenka || Conociendonos || 5
      break;
    case 166:  // Submenú || Matsiguenka || Verbo: Cantar || 1
      break;
    case 167:  // Submenú || Matsiguenka || Verbo: Cantar || 2
      break;
    case 168:  // Submenú || Matsiguenka || Verbo: Cantar || 3
      break;
    case 169:  // Submenú || Matsiguenka || Verbo: Cantar || 4
      break;
    case 170:  // Submenú || Matsiguenka || Verbo: Cantar || 5
      break;
    case 171:  // Submenú || Matsiguenka || Verbo: Cantar || 6
      break;
    case 172:  // Submenú || Matsiguenka || Verbo: Cantar || 7
      break;
    case 173:  // Submenú || Matsiguenka || Verbo: Caminar || 1
      break;
    case 174:  // Submenú || Matsiguenka || Verbo: Caminar || 2
      break;
    case 175:  // Submenú || Matsiguenka || Verbo: Caminar || 3
      break;
    case 176:  // Submenú || Matsiguenka || Verbo: Caminar || 4
      break;
    case 177:  // Submenú || Matsiguenka || Verbo: Caminar || 5
      break;
    case 178:  // Submenú || Matsiguenka || Verbo: Caminar || 6
      break;
    case 179:  // Submenú || Matsiguenka || Verbo: Caminar || 7
      break;
    case 180:  // Submenú || Matsiguenka || Verbo: Comer || 1
      break;
    case 181:  // Submenú || Matsiguenka || Verbo: Comer || 2
      break;
    case 182:  // Submenú || Matsiguenka || Verbo: Comer || 3
      break;
    case 183:  // Submenú || Matsiguenka || Verbo: Comer || 4
      break;
    case 184:  // Submenú || Matsiguenka || Verbo: Comer || 5
      break;
    case 185:  // Submenú || Matsiguenka || Verbo: Comer || 6
      break;
    case 186:  // Submenú || Matsiguenka || Verbo: Comer || 7
      break;
    case 187:  // Submenú || Matsiguenka || Madre tierra || 1
      break;
    case 188:  // Submenú || Matsiguenka || Madre tierra || 2
      break;
    case 189:  // Submenú || Matsiguenka || Madre tierra || 3
      break;
    case 190:  // Submenú || Matsiguenka || Madre tierra || 4
      break;
    case 191:  // Submenú || Matsiguenka || Madre tierra || 5
      break;
    case 192:  // Submenú || Matsiguenka || Animales || 1
      break;
    case 193:  // Submenú || Matsiguenka || Animales || 2
      break;
    case 194:  // Submenú || Matsiguenka || Animales || 3
      break;
    case 195:  // Submenú || Matsiguenka || Abecedario || 1
      break;
    case 196:  // Submenú || Yine
      background(255,0,0);
      text("Submenú Yine",anchoGlobal/2,altoGlobal/2);
      break; 
    case 197:  // Submenú || Yine || Saludándonos || 1
      break;
    case 198:  // Submenú || Yine || Saludándonos || 2
      break;
    case 199:  // Submenú || Yine || Saludándonos || 3
      break;
    case 200:  // Submenú || Yine || Conociendonos || 1
      break;
    case 201:  // Submenú || Yine || Conociendonos || 2
      break;
    case 202:  // Submenú || Yine || Conociendonos || 3
      break;
    case 203:  // Submenú || Yine || Conociendonos || 4
      break;
    case 204:  // Submenú || Yine || Conociendonos || 5
      break;
    case 205:  // Submenú || Yine || Verbo: Cantar || 1
      break;
    case 206:  // Submenú || Yine || Verbo: Cantar || 2
      break;
    case 207:  // Submenú || Yine || Verbo: Cantar || 3
      break;
    case 208:  // Submenú || Yine || Verbo: Cantar || 4
      break;
    case 209:  // Submenú || Yine || Verbo: Cantar || 5
      break;
    case 210:  // Submenú || Yine || Verbo: Cantar || 6
      break;
    case 211:  // Submenú || Yine || Verbo: Cantar || 7
      break;
    case 212:  // Submenú || Yine || Verbo: Caminar || 1
      break;
    case 213:  // Submenú || Yine || Verbo: Caminar || 2
      break;
    case 214:  // Submenú || Yine || Verbo: Caminar || 3
      break;
    case 215:  // Submenú || Yine || Verbo: Caminar || 4
      break;
    case 216:  // Submenú || Yine || Verbo: Caminar || 5
      break;
    case 217:  // Submenú || Yine || Verbo: Caminar || 6
      break;
    case 218:  // Submenú || Yine || Verbo: Caminar || 7
      break;
    case 219:  // Submenú || Yine || Verbo: Comer || 1
      break;
    case 220:  // Submenú || Yine || Verbo: Comer || 2
      break;
    case 221:  // Submenú || Yine || Verbo: Comer || 3
      break;
    case 222:  // Submenú || Yine || Verbo: Comer || 4
      break;
    case 223:  // Submenú || Yine || Verbo: Comer || 5
      break;
    case 224:  // Submenú || Yine || Verbo: Comer || 6
      break;
    case 225:  // Submenú || Yine || Verbo: Comer || 7
      break;
    case 226:  // Submenú || Yine || Madre tierra || 1
      break;
    case 227:  // Submenú || Yine || Madre tierra || 2
      break;
    case 228:  // Submenú || Yine || Madre tierra || 3
      break;
    case 229:  // Submenú || Yine || Madre tierra || 4
      break;
    case 230:  // Submenú || Yine || Madre tierra || 5
      break;
    case 231:  // Submenú || Yine || Animales || 1
      break;
    case 232:  // Submenú || Yine || Animales || 2
      break;
    case 233:  // Submenú || Yine || Animales || 3
      break;
    case 234:  // Submenú || Yine || Abecedario || 1
      break;
    default:
      activity = 0;
      break;
  }
}
