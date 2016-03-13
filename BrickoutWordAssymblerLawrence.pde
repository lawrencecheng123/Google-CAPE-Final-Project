//By Lawrence Cheng and Ben Vu
//Brick-out Word Assembler
//Jake-this is good.
//Jove: Is there a way to avoid all the ifs and else ifs (lines 226 - 275)?
//Jove: A little suggestion: you can substitue the keys a and d to left and right...If you like, ask me how to do it
//Rose: Nice job with the comments. Sounds like color detection is a pain in the arse. I wish I knew a way to help you guys not have all those ifs and else ifs...

 import java.awt.Toolkit;    //needed for the beep
 

 int x = 200;
 int y = 100;    //starting position
 int dx = int((3));
 int dy = int((3));
 int maxx = 1250;
 int maxy = 650;
 int maxa = 980;
 int maxb = 650;
 float red = (255);
 float green = (255);
 float blue =  (255);
 int score = 0;
 int rectx, recty;
 int startTime;
 int lettercount = 0;
 String letters = "";
    int margin = 15;
    int counter = 0;
    boolean gameOn = false;
    int noRed=0;
  
    final String format = "Timer: {0,number,integer} seconds";
    final String prefix = "Timer:";
   
      char letter;
    char randletter = char(int (random(65,90))); 

     
      int c = int(random(800));
    int d = int(random(400));
    int a = int(random(255));
    int b = int(random(255));


 int elapsed;
 int elapsedtime;
 PFont font;
 int recta =int(random(850));
 int rectb= int(random(0,300));
 
  
void setup() 
{


  rectx = 300;
  recty = 600;
  size(maxx, maxy);
  int randx = int(random(2));
  int randy = int(random(2));
  if (randx == 1)
  {
    dx = dx * -1;
    }
    if (randy == 1)
  {
    dy = dy * -1;
    }              //dy and dy should now be random directions 
    
 
         //start the timer!
   
  fill (189,200,34);
  
    int margin = 11;
    int counter = 0;
  for(int i=0; i<margin; i++) {
   
      char letter;
    char randletter;
     randletter = char(int (random(65,90)));
    
    int c = int(random(800));
    int d = int(random(400));
    int a = int(random(255));
    int b = int(random(255));
 
    
  }
  }
  


 //while (boolean gameOver==false){
  void showLetter(){
     if (noRed==0){
      fill (235,222,134);
       ellipse(x,y,155,155);
       randletter = char(int (random(65,90))); 
       print(randletter);
       fill(100,200,150);      
       text(randletter, 1115, 125 + lettercount*25);
       letters = letters + randletter;
       lettercount=lettercount+1;
        fill(235,222,134);
        noRed=1;
        Toolkit.getDefaultToolkit().beep();
        
    
        // delay(2000);
     }
   }
   

 void draw() {
  
  if (!gameOn)
  {
    
    background(255,255,255);
     PFont font;
     fill (0);
   font = loadFont("ArialMT-24.vlw"); 
   textFont(font); 
   fill(29,27,242);
   text("Welcome to Brick-out Word Assembler!",400,200);
   text("You have 20 seconds to hit as many circles as you can to get letters!",240,250);
   text("Rearrange the letters into the longest word possible in 35 seconds to score points after the Brick-out game!",45,300);
   text("Don't let the ball touch the bottom during the game, otherwise you will lose! Survive for 20 seconds!",75,350);
   text("The ball is waiting for you! Are YOU ready?",360,400);
   text("Press any key to start!",470,450);
   text("Use the 'A' and 'D' keys to operate the paddle!",345,550);
  
   if (x>(maxa - 20))
     {  
     dx = dx*-1;    //bounce
     } 
  if (x<20)
      {  
         dx = abs(dx);    //bounce
      }
   if (y<20)
     {
     dy = dy*-1;    //bounce
     }
  if (y>(maxb-20) )
{
            dy=dy*-1;
}

   if (keyPressed == true){
     gameOn = true;
     startTime=millis();
     background(235,222,134);
     int value;
     String word;
       //String GetPlural(int' string);
     /*{ if (value == 1){
      
      // Ad hoc for current sketch,
      // I have something more elaborate for irregular plurals
      return value + " " + word + "s";
    }
     }*/
     /*int seconds = (millis() - startTime) / 1000;
      String message = prefix + seconds + "Second";//GetPlural(seconds, "second");
     stroke(245,133,223);
      fill(0);
      text(message, 1000, 150);*/
      
      fill(255,255,255);
      rect(1000, 0, 250,650);
  fill(218, 145, 250);
  text("Letters Collected:" ,1050,100);
  
     for(int i=0; i<margin; i++) {
        int c = int(random(800));
    int d = int(random(400));
    int a = int(random(255));
    int b = int(random(255));
    fill (189,0,0);
    ellipse(c,d,40,40);
    fill(189,a,b);
    text("?",c,d);
    
  } 
  }
  }
  else
 {
  
  noStroke();        //important for erasing--no outline
  fill (235,222,134);    //white
  ellipse(x,y,50,50);  //erase old ball 
  fill (180,190,200);  //some color other than white whose RGB values we know
  rect(rectx, recty,70,10);    //60 wide, 10 deep

   font = loadFont("ArialMT-24.vlw"); 
   textFont(font); 
   noStroke();
   fill (255,255,255);
   rect(1005,25,200,25);
   fill(0);
   elapsedtime = 20000-(millis()-startTime);
   text(elapsedtime+ "milli-seconds left",1003,50);
   
   //int lettercount = 0
    
     
      if (red(get(x,y+40))==189){
        showLetter();
       //ellipse (c,d,40,40);
               }
       
      else if (red(get(x,y-40))==189)
       {      
      showLetter();
      //ellipse (c,d,40,40);       
        }
        
      else if (red(get(x+40,y))==189)
       {      
       showLetter();
        //ellipse (c,d,40,40);
        }
        
      else if (red(get(x-40,y))==189)
       {      
       showLetter();
       //ellipse (c,d,40,40);
              }
              
      else if (red(get(x,y+28))==189)
       {      
       showLetter();
       // ellipse (c,d,40,40);      
        }
        
      else if (red(get(x,y-28))==189)
       {      
       showLetter();
      // ellipse (c,d,40,40);  
        }
        
      else if (red(get(x+28,y))==189)
       {      
       showLetter();
       // ellipse (c,d,40,40);      
        }
        
      else if (red(get(x-28,y))==189)
       {      
       showLetter();       
       //ellipse (c,d,40,40);       
        }
        
       else {
         noRed=0;
       }
    
  if (x>(maxa - 20))
     {  
     dx = dx*-1;    //bounce
     } 
  if (x<20)
      {  
         dx = abs(dx);    //bounce
      }
   if (y<20)
     {
     dy = dy*-1;    //bounce
     }
   for (int i=-1; i<2; i++)
     {
       
       if (red(get(x+25*i,y+25+dy))==180)    //about to hit paddle
         {
           dy = dy*-1;    //bounce
         }
     }
     
       
   if (y>(maxy-25))    //below the paddle
          {
          Toolkit.getDefaultToolkit().beep();
          score=score+1;
          }
      if (score==1)
        {
       background(0);
          PFont font;
          fill(255,255,255);
          text("Sorry, you lose!",560,300);
          size(1250,650);
          stop();
        }
   /*         frameRate(10);
  frame.removeNotify();
      frame.setUndecorated(true);
      frame.addNotify();*/
      
          // elapsedtime = 20000-(millis()-startTime);
           elapsed = millis()-startTime;          
           //noStroke();        //important for erasing--no outline
           //fill (235,222,134);
           fill(0);           
           //text(elapsedtime+ "milli-seconds remaining",1010,50);
           if (elapsed>=20000)
           {
             text("Game Over! ", 600,300);
             print (elapsed);       
                          
            //   f.dispose();       
           //PFrame f = new PFrame();    

               background(0);         
               fill(255,255,255);      
               text ("Letters Collected:",515,240);
               fill(255,255,255);
               text (letters,525,300);
               stop();

             //  keyPressed();
               
    String elegy;
     elegy = letters.toLowerCase(); 
    /* for(int i=0; i< elegy.length; i++)
     {
       if (keyPressed)
       {
       if (key == 'A'|| key == 'a'){
         elegy.length = elegy.length - 1;
       }
       }
     }*/
    //elegy= "rdhwu";
    //elegy=sort(elegy);
  //  char[] chars = elegy.toCharArray();
    
    
 //   char[] collectedletters = new char[8];
   // for(int i=0; i<9; i++)
   // {
  /*  collectedletters[0] = chars[0];
     collectedletters[1] = chars[1];
     collectedletters[2] = chars[2];  
     collectedletters[3] = chars[3];
     collectedletters[4] = chars[4];
     collectedletters[5] = chars[5];
     collectedletters[6] = chars[6];
     collectedletters[7] = chars[7];
     //collectedletters[8] = chars[8];
     //collectedletters[9] = chars[9];
    }*/
       // You need to collect at least seven elements/letters from 
       // the game for the whole program to run.
       
          //  if (key==chars[0] ||key== chars[1] ||key== chars[2] ||key== chars[3] ||key== chars[4] ||key== chars[5] ||key== chars[6] ||key== chars[7]); //||key!= chars[8] ||key!= chars[9]);
            {
          
             fill(255,255,255);
             text("Follow the honor system! Only use the collected letters to make the longest word possible!", 140, 70);
             text("Go to the python file to continue the game!",410, 95);
             fill(255,255,255);
            text("Begin making words!",500,170);
           
            }
                                     
            elapsed = second() -startTime;
          if (elapsed >=  55000)
                  {
          background(0);
         // PFont font;
          fill(255,255,255);
          text("Sorry, time's up!",615,300);
          size(1250,650);
                  
             stop();
           /*   background(255,255,255);
             text ("Letter Bank",30,60);
             text ("Letters Collected:", 30, 150);*/
                    
        x=300;
       y=100;    //start over again, in the middle
                  }
                }
          }


    x=x+dx;
    y=y+dy; 
  //fill (red,green,blue);
  fill(0);
  ellipse(x,y,50,50);
//println (y+"   "+dy);
  if (keyPressed) 
    {
     fill (235,222,134);
     rect(rectx, recty,70,10);
      if (key=='D' || key=='d')
        {
          rectx=rectx + 22;
          if (rectx>maxa-50)
            {
              rectx = maxa-50;
            }
        }   
      if (key=='A' || key=='a')
        {
          rectx=rectx - 22;
          if (rectx<0)
            {
              rectx = 0;
            }
        }  
        fill (180,190,200);
        rect(rectx, recty,70,10); 
        
     }   
 }
