//Global Variable
color rectFill, ellipseFill, defaultColor=#FFFFFF;
boolean nightMode=false;
//
float xBox1, yBox1, widthBox1, heightBox1;
float xBox2, yBox2, widthBox2, heightBox2;
float xBox3, yBox3, widthBox3, heightBox3;
float xBox4, yBox4, widthBox4, heightBox4;
float xBox5, yBox5, widthBox5, heightBox5;
float xBox6, yBox6, widthBox6, heightBox6;
float xBox7, yBox7, widthBox7, heightBox7;
float xBox8, yBox8, widthBox8, heightBox8;
float xBox9, yBox9, widthBox9, heightBox9;
//
float xCircle1, yCircle1, diameterCircle1; 
float xCircle2, yCircle2, diameterCircle2;
float xCircle3, yCircle3, diameterCircle3;
float xCircle4, yCircle4, diameterCircle4;
float xCircle5, yCircle5, diameterCircle5;
float xCircle6, yCircle6, diameterCircle6;
float xCircle7, yCircle7, diameterCircle7;
float xCircle8, yCircle8, diameterCircle8;
float xCircle9, yCircle9, diameterCircle9;
float xCircle10, yCircle10, diameterCircle10;
float xCircle11, yCircle11, diameterCircle11;
float xCircle12, yCircle12, diameterCircle12;
float xCircle13, yCircle13, diameterCircle13;
float xCircle14, yCircle14, diameterCircle14;
float xCircle15, yCircle15, diameterCircle15;
float xCircle16, yCircle16, diameterCircle16;
//
void setup () {
  //CANVAS
  size (900, 600); //Landscape
  println (width, height, displayWidth, displayHeight);
  int appWidth = width;
  int appHeight = height;
  if (width > displayWidth || height > displayHeight) {//CANVAS in Display Checker
    //CANVAS Too Big
    appWidth =displayWidth;
    appHeight = displayHeight;
    println ("CANVAS needed to be readjusted to fit on your monitor.");
  } else {
    println("CANVAS is Good to go on your display.");
  }//End CANVAS in Display Checker
  //Display Orientation
  String ls = "Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru turn your phun";
  String orientation = ( appWidth>=appHeight) ? ls : p; //Ternary Operator, repeats the IF-Else structure to populated a variable
  println( DO, orientation );
  if ( orientation==ls ) {//Test for chosen display orientation
    println("Good to go");
  } else {
    appWidth *=0; //assignment operator, words like appWidth=appWidth*0
    appHeight *=0;
    println(instruct);
  }
  //
  //Population
  xBox1 = appWidth*0/3; 
  yBox1 = appHeight*0/3; 
  widthBox1 = appWidth*1/3;  
  heightBox1 = appHeight*1/3;
  //
  xBox2 = appWidth*1/3;
  yBox2 = appHeight*0/3;
  widthBox2 = appWidth*1/3;
  heightBox2 = appHeight*1/3;
  //
  xBox3 = appWidth*2/3;
  yBox3 = appHeight*0/3;
  widthBox3 = appWidth*1/3; 
  heightBox3 = appHeight*1/3;
  //
  xBox4 = appWidth*0/3;
  yBox4 = appHeight*1/3;
  widthBox4 = appWidth*1/3;
  heightBox4 = appHeight*1/3;
  //
  xBox5 = appWidth*1/3;
  yBox5 = appHeight*1/3;
  widthBox5 = appWidth*1/3; 
  heightBox5 = appHeight*1/3;
  //
  xBox6 = appWidth*2/3;
  yBox6 = appHeight*1/3;
  widthBox6 = appWidth*1/3; 
  heightBox6 = appHeight*1/3;
  //
  xBox7 = appWidth*0/3;
  yBox7 = appHeight*2/3;
  widthBox7 = appWidth*1/3;
  heightBox7 = appHeight*1/3;
  //
  xBox8 = appWidth*1/3;
  yBox8 = appHeight*2/3;
  widthBox8 = appWidth*1/3;
  heightBox8 = appHeight*1/3;
  //
  xBox9 = appWidth*2/3;
  yBox9 = appHeight*2/3;
  widthBox9 = appWidth*1/3;
  heightBox9 = appHeight*1/3;
  //
  xCircle1 = appWidth*0/3;
  yCircle1 = appHeight*0/3;
  diameterCircle1 = appWidth*1/20;
  //
  xCircle2 = appWidth*1/3;
  yCircle2 = appHeight*0/3;
  diameterCircle2 = appWidth*1/20;
  //
  xCircle3 = appWidth*2/3;
  yCircle3 = appHeight*0/3;
  diameterCircle3 = appWidth*1/20;
  //
  xCircle4 = appWidth*3/3;
  yCircle4 = appHeight*0/3;
  diameterCircle4 = appWidth*1/20;
  //
  xCircle5 = appWidth*0/3;
  yCircle5 = appHeight*1/3;
  diameterCircle5 = appWidth*1/20;
  //
  xCircle6 = appWidth*1/3;
  yCircle6 = appHeight*1/3;
  diameterCircle6 = appWidth*1/20;
  //
  xCircle7 = appWidth*2/3;
  yCircle7 = appHeight*1/3;
  diameterCircle7 = appWidth*1/20;
  //
  xCircle8 = appWidth*3/3;
  yCircle8 = appHeight*1/3;
  diameterCircle8 = appWidth*1/20;
  //
  xCircle9 = appWidth*0/3;
  yCircle9 = appHeight*2/3;
  diameterCircle9 = appWidth*1/20;
  //
  xCircle10 = appWidth*1/3;
  yCircle10 = appHeight*2/3;
  diameterCircle10 = appWidth*1/20;
  //
  xCircle11 = appWidth*2/3;
  yCircle11 = appHeight*2/3;
  diameterCircle11 = appWidth*1/20;
  //
  xCircle12 = appWidth*3/3;
  yCircle12 = appHeight*2/3;
  diameterCircle12 = appWidth*1/20;
  //
  xCircle13 = appWidth*0/3;
  yCircle13 = appHeight*3/3;
  diameterCircle13 = appWidth*1/20;
  //
  xCircle14 = appWidth*1/3;
  yCircle14 = appHeight*3/3;
  diameterCircle14 = appWidth*1/20;
  //
  xCircle15 = appWidth*2/3;
  yCircle15 = appHeight*3/3;
  diameterCircle15 = appWidth*1/20;
  //
  xCircle16 = appWidth*3/3;
  yCircle16 = appHeight*3/3;
  diameterCircle16 = appWidth*1/20;
}///End setup
//
void draw () {
  fill (rectFill);
  rect (xBox1, yBox1, widthBox1, heightBox1);//Top left
  rect (xBox2, yBox2, widthBox2, heightBox2);//Top Center
  rect (xBox3, yBox3, widthBox3, heightBox3);//Top Right
  rect (xBox4, yBox4, widthBox4, heightBox4);//Center Left
  rect (xBox5, yBox5, widthBox5, heightBox5);//Middle
  rect (xBox6, yBox6, widthBox6, heightBox6);//Center Right
  rect (xBox7, yBox7, widthBox7, heightBox7);//Bottom Left
  rect (xBox8, yBox8, widthBox8, heightBox8);//Bottom Center
  rect (xBox9, yBox9, widthBox9, heightBox9);//Bottom Right
  //
  fill (ellipseFill);
  ellipse (xCircle1, yCircle1, diameterCircle1, diameterCircle1);
  ellipse (xCircle2, yCircle2, diameterCircle2, diameterCircle2);
  ellipse (xCircle3, yCircle3, diameterCircle3, diameterCircle3);
  ellipse (xCircle4, yCircle4, diameterCircle4, diameterCircle4);
  ellipse (xCircle5, yCircle5, diameterCircle5, diameterCircle5);
  ellipse (xCircle6, yCircle6, diameterCircle6, diameterCircle6);
  ellipse (xCircle7, yCircle7, diameterCircle7, diameterCircle7);
  ellipse (xCircle8, yCircle8, diameterCircle8, diameterCircle8);
  ellipse (xCircle9, yCircle9, diameterCircle9, diameterCircle9);
  ellipse (xCircle10, yCircle10, diameterCircle10, diameterCircle10);
  ellipse (xCircle11, yCircle11, diameterCircle11, diameterCircle11);
  ellipse (xCircle12, yCircle12, diameterCircle12, diameterCircle12);
  ellipse (xCircle13, yCircle13, diameterCircle13, diameterCircle13);
  ellipse (xCircle14, yCircle14, diameterCircle14, diameterCircle14);
  ellipse (xCircle15, yCircle15, diameterCircle15, diameterCircle15);
  ellipse (xCircle16, yCircle16, diameterCircle16, diameterCircle16);
  fill(defaultColor);
}//End draw
//
void keyPressed () {
  if ( nightMode == false ) {//nightMode Switch
    nightMode = true;
  } else {
    nightMode = false;
  }//End nightMode Switch
  if (key == 'n' || key == 'N') {
    if(nightMode==true){
      rectFill= color(#DB6DF5);
      ellipseFill= color(#FFFFFF);
    } else {
      rectFill= color(#A77714);
      ellipseFill= color(#000000);
    }
  }//End nightMode True
  //
}//End keyPressed
//
void mousePressed () {
}//End mousePressed
//
//End MAIN Program
