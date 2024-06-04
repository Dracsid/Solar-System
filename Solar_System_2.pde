Blinker[] blinkers = new Blinker[100];
float []planet;
float ps = random(5,5);

void setup() {
  size(1000, 1000);
  for (int i = 0; i < blinkers.length; i++) {
    blinkers[i] = new Blinker(random(0, height), random(.1, .5), random(1.0, 3.5));
  }
planet = new float[10];
planet[0] = random(0,100);
planet[1] = random(0,100);
planet[2] = random(0,100);
planet[3] = random(0,100);
planet[4] = random(0,100);
planet[5] = 23;
planet[6] = 25;
planet[7] = 29;
planet[8] = 32;
planet[9] = 10;

  
  
}

void draw() {
  for (int i = 0; i < blinkers.length; i++) {
    blinkers[i].display();
    blinkers[i].drift();
    blinkers[i].blink(); 
  }
  
for(int i = 0; i <planet.length; i++){
  ellipse(planet[i]*width/100, random(0,height), ps, ps); 
  fill(random(0,255),random(0,255),random(0,255));
}
  
  
  
}
