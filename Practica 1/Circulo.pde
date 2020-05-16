class Circulo{
  float x;
  float y;
  float diametro;
  int id;
  boolean mover;
  float velocidad;
  Circulo(float a, float b, float c, int d){
     velocidad = random(5);
     x = a;
     y = b;
     diametro = c;
     id = d;
     ellipseMode(CENTER);
     mover = false;
  }

void dibuja(){
  
   fill(#21211F);
   ellipse(x,y,diametro,diametro);
   
   textSize(24);
   fill(#DB145D);
   text(id,x,y);
}

boolean isAdentro(float a, float b){
   if( dist(a,b,x,y) < diametro/2)
         return true;
   else
         return false;
         
}

void detener(){
velocidad=0;

}

}
