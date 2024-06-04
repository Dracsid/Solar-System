class Blinker { // you want a lower-case c in class

  float xpos, ypos, s, b, energy;
  float nin = 10; // noise isn't moving by itself. if kept in void drift it resets itself

  Blinker(float tempypos, float tempenergy, float temps) {
    // objects are capitalized. how big it is and where it is.
    ypos = tempypos;
    xpos = 0;
    energy = tempenergy;
    s = temps;
    background(0);
  }

  void display() {
    noStroke();
    fill(b);
    ellipse(xpos, ypos, s, s);
  }

  void blink() {
    float r = random(0, 99);
    if (r > 98) { // if  r is greater than 98, make it flash white.
      b = 255;
    } else {
      b = 0;
    } // if its not greater, make it not flash anything.
  }

  void drift() {
    nin = nin + energy;
    float nout = noise(nin); // noise out = noise multiplied by (noise in)
    float wiggle = map(nout, 0, 1, 0, 7); // if you made this xpos they'd all move the same
    xpos = xpos + wiggle;
  }
}
