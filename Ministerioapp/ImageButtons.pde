class ImageButtons extends Button {
  PImage base;
  PImage down;
  PImage currentimage;
  //boolean pageact;
  //boolean pagenew;

  ImageButtons(int ix, int iy, int iw, int ih, PImage ibase, PImage idown){
    x = ix;
    y = iy;
    w = iw;
    h = ih;
    base = ibase;
    down = idown;
    currentimage = base;
  
  }
  
  void update(){
    over();
    pressed();
    
    pageact=true;
    pagenew=false;
    
    if(pressed) {
      currentimage = down;
      pageact = false;
      pagenew = true;
    } 
    else {
      currentimage = base;
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
    image(currentimage, x, y);
  }
}
