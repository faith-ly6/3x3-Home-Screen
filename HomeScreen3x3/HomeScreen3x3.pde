//Global Variable
color rectFill1, rectFill2, rectFill3, rectFill4, rectFill6, rectFill7, rectFill8, rectFill9;
color buttonFill1, buttonFill2, buttonFill3, buttonFill4, buttonFill6, buttonFill7, buttonFill8;
color ellipseFill, defaultColor=#FFFFFF;
//boolean nightMode=false;
PFont buttonFont;
boolean button1ON=false, button2ON=false, button3ON=false, button4ON=false, button6ON=false, button7ON=false, button8ON=false;
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
float xStart, yStart, widthStart, heightStart;
float xQuit, yQuit, widthQuit, heightQuit;
float xButton1, yButton1, widthButton1, heightButton1;
float xButton2, yButton2, widthButton2, heightButton2;
float xButton3, yButton3, widthButton3, heightButton3;
float xButton4, yButton4, widthButton4, heightButton4;
float xButton6, yButton6, widthButton6, heightButton6;
float xButton7, yButton7, widthButton7, heightButton7;
float xButton8, yButton8, widthButton8, heightButton8;
String quitText1= "Leave";
String box5Text= "Find the button";
String startText= "Start";
//
float xImage, yImage, widthImageAdjusted, heightImageAdjusted, imageWidthRatio=0.0, imageHeightRatio=0.0;
float imageLargerDimension, imageSmallerDimension;
Boolean widthLarger=false, heightLarger=false, imageON=false;
PImage pic1;

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
  pic1 = loadImage("../Congrates.png");//Dimensions width 275, height 183
  int picWidth = 275;
  int picHeight = 183;
   if ( picWidth >= picHeight ) { //Image Dimension Comparison
    //True if Landscape or Square
    imageLargerDimension = picWidth;
    imageSmallerDimension = picHeight;
    widthLarger = true;
  } else {
    //False if Portrait
    imageLargerDimension = picHeight;
    imageSmallerDimension = picWidth;
    heightLarger = true;
  }//End Image Dimension Comparison
  println(imageSmallerDimension, imageLargerDimension, widthLarger, heightLarger); //Verify variables details
  //Aspect Ratio
  //Note: single line IFs can be summarized into IF-ELSE or IF-ElseIF-Else
  //Computer chooses which formulae to execute
  if ( widthLarger == true ) imageWidthRatio = imageLargerDimension / imageLargerDimension;
  if ( widthLarger == true ) imageHeightRatio = imageSmallerDimension / imageLargerDimension;
  if ( heightLarger == true ) imageWidthRatio = imageSmallerDimension / imageLargerDimension;
  if ( heightLarger == true ) imageHeightRatio = imageLargerDimension / imageLargerDimension;
  //
  xImage = appWidth*0/3;
  yImage = appHeight*1/3;
  widthImageAdjusted = appWidth*1/3;
  heightImageAdjusted = appHeight*1/3;
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
  //
  xStart = appWidth*3.5/9;
  yStart = appHeight*4/9;
  widthStart = appWidth*2/9; 
  heightStart = appHeight*.5/9;
  //
  xQuit = appWidth*3.5/9;
  yQuit = appHeight*5/9;
  widthQuit = appWidth*2/9;
  heightQuit = appHeight*.5/9;
  //
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
  
  //
  xButton1 = appWidth*.5/9;
  yButton1 = appHeight*2/9;
  widthButton1 = appWidth*1/18; 
  heightButton1 = appHeight*1/18;
  //
  xButton2 = appWidth*5/9;
  yButton2 = appHeight*1/9;
  widthButton2 = appWidth*1/18; 
  heightButton2 = appHeight*1/18;
  //
  xButton3 = appWidth*8/9;
  yButton3 = appHeight*0.5/9;
  widthButton3 = appWidth*1/18; 
  heightButton3 = appHeight*1/18;
  //
  xButton4 = appWidth*7/9;
  yButton4 = appHeight*4/9;
  widthButton4 = appWidth*1/18; 
  heightButton4 = appHeight*1/18;
  //
  xButton6 = appWidth*6.5/9;
  yButton6 = appHeight*7/9;
  widthButton6 = appWidth*1/18; 
  heightButton6 = appHeight*1/18;
  //
  xButton7 = appWidth*5/9;
  yButton7 = appHeight*8/9;
  widthButton7 = appWidth*1/18; 
  heightButton7 = appHeight*1/18;
  //
  xButton8 = appWidth*2/9;
  yButton8 = appHeight*7.5/9;
  widthButton8 = appWidth*1/18; 
  heightButton8 = appHeight*1/18;
  //Text Setup
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  buttonFont = createFont ("Verdana", 10); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  fill (#000000); //Ink
  textAlign (CENTER, CENTER);
  textFont (buttonFont, 10);
}//End setup
//
void draw () {
  
  if(imageON==true) image (pic1, xImage, yImage, widthImageAdjusted, heightImageAdjusted);
  fill (rectFill1);
  rect (xBox1, yBox1, widthBox1, heightBox1);//Top left
  fill (rectFill2);
  rect (xBox2, yBox2, widthBox2, heightBox2);//Top Center
  fill (rectFill3);
  rect (xBox3, yBox3, widthBox3, heightBox3);//Top Right
  //noFill();
  if( imageON == false) {fill (rectFill4);} else {noFill();};
  rect (xBox4, yBox4, widthBox4, heightBox4);//Center Left
  fill (defaultColor);
  rect (xBox5, yBox5, widthBox5, heightBox5);//Middle
  fill (rectFill6);
  rect (xBox6, yBox6, widthBox6, heightBox6);//Center Right
  fill (rectFill7);
  rect (xBox7, yBox7, widthBox7, heightBox7);//Bottom Left
  fill (rectFill8);
  rect (xBox8, yBox8, widthBox8, heightBox8);//Bottom Center
  fill (rectFill9);
  rect (xBox9, yBox9, widthBox9, heightBox9);//Bottom Right
  //
  fill (#FFFFFF);
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
  //
  fill(#EDE600);
  rect(xStart, yStart, widthStart, heightStart);
  rect(xQuit, yQuit, widthQuit, heightQuit);
  //
  stroke (rectFill1);
  fill (buttonFill1);
  if(button1ON==true) {if (mouseX> xButton1 && mouseX< xButton1+widthButton1 && mouseY>yButton1 && mouseY<yButton1+heightButton1) {
    buttonFill1 = #FAB7B1;
  } else {
    buttonFill1 = #FC9187;}rect(xButton1, yButton1, widthButton1, heightButton1);}
  //
  stroke (rectFill2);
  fill (buttonFill2);
  if (button2ON==true){if (mouseX> xButton2 && mouseX< xButton2+widthButton2 && mouseY>yButton2 && mouseY<yButton2+heightButton2) {
    buttonFill2 = #FFBF71;
  } else {
    buttonFill2 = #FFAF46;}
  rect(xButton2, yButton2, widthButton2, heightButton2);}
  //
  stroke (rectFill3);
  fill (buttonFill3);
  if (button3ON==true){if (mouseX> xButton3 && mouseX< xButton3+widthButton3 && mouseY>yButton3 && mouseY<yButton3+heightButton3) {
    buttonFill3 = #F2FCBA;
  } else {
    buttonFill3 = #EAFF79;}}
  rect(xButton3, yButton3, widthButton3, heightButton3);
  //
  stroke (rectFill6);
  fill (buttonFill4);
  if (button4ON==true){if (mouseX> xButton4 && mouseX< xButton4+widthButton4 && mouseY>yButton4 && mouseY<yButton4+heightButton4) {
    buttonFill4 = #B1FCA6;
  } else {
    buttonFill4 = #88FF79;}}
  rect(xButton4, yButton4, widthButton4, heightButton4);
  //
  stroke (rectFill9);
  fill (buttonFill6);
  if (button6ON==true){if (mouseX> xButton6 && mouseX< xButton6+widthButton6 && mouseY>yButton6 && mouseY<yButton6+heightButton6) {
    buttonFill6 = #98A0FF;
  } else {
    buttonFill6 = #989AFF;}}
  rect(xButton6, yButton6, widthButton6, heightButton6);
  //
  stroke (rectFill8);
  fill (buttonFill7);
   if (button7ON==true){if (mouseX> xButton7 && mouseX< xButton7+widthButton7 && mouseY>yButton7 && mouseY<yButton7+heightButton7) {
    buttonFill7 = #BE6EE6; 
  } else {
    buttonFill7 = #BE6AE0;}}
  rect(xButton7, yButton7, widthButton7, heightButton7);
  //
  stroke (rectFill7);
  fill (buttonFill8);
   if (button8ON==true){if (mouseX> xButton8 && mouseX< xButton8+widthButton8 && mouseY>yButton8 && mouseY<yButton8+heightButton8) {
    buttonFill8 = #FF96F5;
  } else {
    buttonFill8 = #FA90F0;}}
  rect(xButton8, yButton8, widthButton8, heightButton8);
  //
  stroke (0,0,0);
  //
  fill (#000000); //Ink
  textAlign (CENTER, CENTER);
  textFont (buttonFont, 20);
  //
  text (quitText1, xQuit, yQuit, widthQuit, heightQuit);
  textAlign (CENTER, TOP);
  text (box5Text, xBox5, yBox5, widthBox5, heightBox5);
  textAlign (CENTER,CENTER);
  text (startText, xStart, yStart, widthStart, heightStart);
  //
}//End draw
//
void keyPressed () {
}//End keyPressed
//
void mousePressed () {
  if (mouseX>=xQuit && mouseX<=xQuit+widthQuit && mouseY>=yQuit && mouseY<=yQuit+heightQuit) exit();
  if (mouseX>=xStart && mouseX<=xStart+widthStart && mouseY>=yStart && mouseY<=yStart+heightStart) {
    rectFill1=#FC9187;
    buttonFill1=#FC9187; 
  }//End box1
  if (mouseX>=xStart && mouseX<=xStart+widthStart && mouseY>=yStart && mouseY<=yStart+heightStart) {if(button1ON==false) {button1ON=true;}}
  //
  if (mouseX>=xButton1 && mouseX<=xButton1+widthButton1 && mouseY>=yButton1 && mouseY<=yButton1+heightButton1) {if(button2ON==false) {button2ON=true;}}
  if (mouseX>=xButton1 && mouseX<=xButton1+widthButton1 && mouseY>=yButton1 && mouseY<=yButton1+heightButton1) {
    rectFill2=#FFAF46;
    buttonFill2=#FFAF46;
  }//End button1
  //
  if (mouseX>=xButton2 && mouseX<=xButton2+widthButton2 && mouseY>=yButton2 && mouseY<=yButton2+heightButton2) {if(button3ON==false) {button3ON=true;}}
  if (mouseX>=xButton2 && mouseX<=xButton2+widthButton2 && mouseY>=yButton2 && mouseY<=yButton2+heightButton2) {
    rectFill3=#EAFF79;
    buttonFill3=#EAFF79;
  }//End button2
  //
  if (mouseX>=xButton3 && mouseX<=xButton3+widthButton3 && mouseY>=yButton3 && mouseY<=yButton3+heightButton3) {if(button4ON==false) {button4ON=true;}}
  if (mouseX>=xButton3 && mouseX<=xButton3+widthButton3 && mouseY>=yButton3 && mouseY<=yButton3+heightButton3) {
    rectFill6=#88FF79;
    buttonFill4=#88FF79;
  }//End button3
  //
  if (mouseX>=xButton4 && mouseX<=xButton4+widthButton4 && mouseY>=yButton4 && mouseY<=yButton4+heightButton4) {if(button6ON==false) {button6ON=true;}}
  if (mouseX>=xButton4 && mouseX<=xButton4+widthButton4 && mouseY>=yButton4 && mouseY<=yButton4+heightButton4) {
    rectFill9=#989AFF;
    buttonFill6=#989AFF;
  }//End button4
  //
  if (mouseX>=xButton6 && mouseX<=xButton6+widthButton6 && mouseY>=yButton6 && mouseY<=yButton6+heightButton6) {if(button7ON==false) {button7ON=true;}}
  if (mouseX>=xButton6 && mouseX<=xButton6+widthButton6 && mouseY>=yButton6 && mouseY<=yButton6+heightButton6) {
    rectFill8=#BE6AE0;
    buttonFill7=#BE6AE0;
  }//End button6
  //
  if (mouseX>=xButton7 && mouseX<=xButton7+widthButton7 && mouseY>=yButton7 && mouseY<=yButton7+heightButton7) {if(button8ON==false) {button8ON=true;}}
   if (mouseX>=xButton7 && mouseX<=xButton7+widthButton7 && mouseY>=yButton7 && mouseY<=yButton7+heightButton7) {
    rectFill7=#FA90F0;
    buttonFill8=#FA90F0;
  }//End button7
  //
  if (mouseX>=xButton8 && mouseX<=xButton8+widthButton8 && mouseY>=yButton8 && mouseY<=yButton8+heightButton8) {if(button7ON==false) {button7ON=true;}}
  if (mouseX>=xButton8 && mouseX<=xButton8+widthButton8 && mouseY>=yButton8 && mouseY<=yButton8+heightButton8) {
    imageON=true;
  }//End button8
}//End mousePressed
//
//End MAIN Program
