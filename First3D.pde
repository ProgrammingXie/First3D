float RotateX = 0;
float RotateY = 0;

void setup(){
  size(800,800,P3D);
  frameRate(1000);
}

void draw(){
  background(255);
  
  Cube(width/2+300, height/2, 0, 150, 100, 200);  
  Cube(width/2-300, height/2, 0, #00FFFF, 100, 100); 
  Cube(width/2, height/2, 0, 0, 330, 255);
  
  Ball(width/2, height/2, 0, #FF0000, 200, 0, 1, 140);
  Ball(width/2, height/2, 0, #FF0000, 200, 0, 1, 140);
  Ball(width/2, height/2, 0, #FFFF00, 220, 1, 0, 0);
  Ball(width/2, height/2, 0, #FFFF00, 210, 0, 1, 100);
  
  //translate(width/2,height/2,0);// X Y Z
  //rotateX(RotateX);
  //rotateY(RotateY);
  
  //fill(150);
  //stroke(0);
  //strokeWeight(5);
  //box(200,200,200);// Width Height Depth 
  //pushMatrix();   
  //  fill(0,255,255);
  //  stroke(0);
  //  strokeWeight(5);
  //  box(100,100,320);
    
  //  fill(150,150);
  //  box(190,390,190);
    
  //  noFill();
  //  stroke(0);
  //  strokeWeight(5);
  //  box(400,200,200);// Width Height Depth 
    
  //popMatrix();
  

}
//===============================================================================
  
void Cube(float X, float Y, float Z, color Colour, int Size, int ColourFade){
  pushMatrix();
    translate(X, Y, Z);// X Y Z
    rotateX(RotateX);
    rotateY(RotateY);
    
    fill(Colour,ColourFade);
    stroke(0);
    strokeWeight(5);
    box(Size);// Width Height Depth 
  popMatrix();
}
//===============================================================================
void Ball(float X, float Y, float Z, color Colour, int Size, int StrokeYes, int FillYes, int FillFade){
  pushMatrix();
  
    translate(X, Y, Z);// X Y Z
    rotateX(RotateX);
    rotateY(RotateY);
    if (FillYes == 1){
      fill(Colour,FillFade);
    }
    else {
      noFill();
    }
    if (StrokeYes == 1){
      stroke(0, random(0,255), random(0,255));
      strokeWeight(1);
    }
    else {
      noStroke();
    }
    sphere(Size);
    
  popMatrix();
}
//===============================================================================

void mouseDragged(){
  RotateX = RotateX + (pmouseY - mouseY)*0.01;
  RotateY = RotateY + (pmouseX - mouseX)*-0.01;

}
