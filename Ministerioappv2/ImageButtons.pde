class ImageButtons extends Button {
  PImage base;
  PImage down;
  PImage currentimage;
  int modo;
  //boolean pageact;
  //boolean pagenew;

  ImageButtons(int ix, int iy, int iw, int ih, PImage ibase, PImage idown, int imodo){
    x = ix;
    y = iy;
    w = iw;
    h = ih;
    modo = imodo;
    base = ibase;
    down = idown;
    currentimage = base;
  
  }
  
  void update(){
    over();
    pressed();
    
    pageact=true;
    pagenew=false;
    
    if(modo==1){
      if(pressed) {
        currentimage = down;
        pageact = false;
        pagenew = true;
      } 
      else {
        currentimage = base;
      }
    }
    else{
      if(pressed){
        currentimage = down;
      }
      else {
        currentimage = base;
      }
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
