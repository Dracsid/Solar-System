Blinker[] blinkers = new Blinker[100];
Planet[] planets = new Planet[5];

void setup() {
  size(1000, 1000);
  for (int i = 0; i < blinkers.length; i++) {
    blinkers[i] = new Blinker(random(0, height), random(.1, .5), random(1.0, 3.5));
  }
  for(int i = 0; i < planets.length; i++) {  
    planets[i] = new Planet(random(1,30), random(0,height), random(40,60));
  }
}

void draw() {
  for (int i = 0; i < blinkers.length; i++) {
    blinkers[i].display();
    blinkers[i].drift();
    blinkers[i].blink(); 
  }
  for(int i = 0; i < planets.length; i++) {
    planets[i].planet();
    planets[i].planetdrift();
  }
}
