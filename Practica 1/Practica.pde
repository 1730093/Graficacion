
import java.util.List;
Circulo c1, c2, c3, tmp;
List <Circulo>lista; // <> Operador Diamante
float dx,dy;
int d; // Id de circulo deseado para mover
String q="";
float x,y;
int n=-1; // para el id del circulo
int k = 10; // numero de circulos en la lista
int w =0;
void setup(){
  d =-1;
  dx = dy =0;
    y = 0;
    size(700,500);
    lista = new <Circulo>ArrayList();
    tmp = null;
    for(int i=0; i <k ;i++){
       x = random(width);
       y = 50*(i+1);
       tmp = new Circulo(x,y,50,w);
       w++;
       lista.add(tmp);
    }
}

void draw(){
   background(0);
   for(int i=0; i < lista.size() ;i++){
       tmp = lista.get(i);
       //tmp.x = tmp.x + tmp.velocidad;
       
       if(tmp.x > width)
           tmp.x = 50;
       tmp.dibuja();
   }
  /* textSize(24);
   fill(#DB145D);
   text(q,40,50);
   if (n != -1)
       text(n,140,30);
   fill(255);*/
}

void mousePressed(){
  q="";
  
   for(int i=lista.size()-1; i>=0  ;i--){
          tmp = lista.get(i);
          if (tmp.isAdentro(mouseX, mouseY) ) {
             n = tmp.id;
             q += tmp.id;
             d =i;
             tmp.mover=true;
             dx = mouseX-tmp.x;
             dy = mouseY-tmp.y;
             break;
          }
   }
   
}

void mouseDragged(){
  
   tmp.detener();
    if(d != -1){
       tmp = lista.get(d);
       tmp.x = mouseX -dx;      
       tmp.y = mouseY -dy;
    }
    
}

void mouseReleased(){
   
   q = "";
   n = -1; // no se está seleccionando nigún círculo.
   d = -1;
      
   tmp.mover = false;
   tmp = null;

}
/*
void mouseClicked(){
  if(tmp.isAdentro(mouseX, mouseY)){
      tmp.detener();  
  }
}*/
