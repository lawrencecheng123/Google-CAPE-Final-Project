String myText = "Type as many words as possible!";
PFont font;

void setup() {
  size(1250,650);
  font = createFont("ArialMT",40);
  textFont(font,40);
  textAlign(CENTER,CENTER);
}

void draw() {
  background(0);
  text(myText, 0,0, width,height);
}

void keyPressed() {
  if (keyCode == BACKSPACE) {
    if (myText.length() > 0) {
      myText = myText.substring(0, myText.length()-1);
    }
  } else if (keyCode == ENTER) {
    myText = "";
  } else if (keyCode != SHIFT) {
      myText = myText + key;
  } else if (myText == myText + 'a'){
    fill(255,255,255);
    text("Is a whale!",500,600);
  }
}
