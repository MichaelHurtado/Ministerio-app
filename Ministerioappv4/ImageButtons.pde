class ImageButtons extends Button {
  PImage base;
  PImage down;
  PImage currentimage;
  int modo;
  int ID;
  //boolean pageact;
  //boolean pagenew;

  ImageButtons(int iID,int imodo,int ix, int iy, int iw, int ih, PImage ibase, PImage idown){
    ID = iID;
    x = ix;
    y = iy;
    w = iw;
    h = ih;
    modo = imodo;
    base = ibase;
    down = idown;
    currentimage = base;
  }
  
  void update() {
    over();
    pressed();
    switch(modo){
      case 0:    //Menú pricipal
        if(pressed && (ID<=5)) {
          switch(ID) {
            case 0:      //Submenú Aymara
              activity = 1;
              break;
            case 1:      //Submenú Jaqaru
              activity = 40;
              break;
            case 2:      //Submenú Quechua
              activity = 79;
              break;
            case 3:      //Submenú Shipibo
              activity = 118;
              break;
            case 4:      //Submenú Matsiguenka
              activity = 157;
              break;
            case 5:      //Submenú Yine
              activity = 196;
              break;
          }
          currentimage = down;
        }
        else {
          currentimage = base;
        }
        break;
      case 1:    //Adelantar
        if(pressed) {
          activity++;
          currentimage = down;
        }
        else {
          currentimage = base;
        }
        break;
      case 2:    //Regresar
        if(pressed) {
          activity--;
          currentimage = down;
        }
        else {
          currentimage = base;
        }
        break;
      case 3:    //Mostrar texto
        if(pressed){
          currentimage = down;
        }
        else {
          currentimage = base;
        }
        break;
      case 4:    //Audio
        break;
    }
  }
  
  void over(){
    if( overRect(x, y, w, h) ) {
      over = true;
    } else {
      over = false;
    }
  }
  
  void display(){
    image(currentimage, x, y, w, h);
  }
}
