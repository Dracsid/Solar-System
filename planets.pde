class Planet {
  float s2, xpos2, ypos2, energy2;
  float nin2 = 40;

  Planet(float temps2, float tempypos2, float tempenergy2) {
    ypos2 = tempypos2;
    xpos2 = 0;
    energy2 = tempenergy2;
    s2 = temps2;
  }

  void planet() {
    noStroke();
    fill(random(0, 255), random(0, 255), random(0, 255), random(99, 100));
    ellipse(xpos2, ypos2, s2, s2);
  }
  void planetdrift() {
    nin2 = nin2 + energy2;
    float nout2 = noise(nin2); // noise out = noise multiplied by (noise in)
    float wiggle2 = map(nout2, 0, 1, 0, 750); // if you made this xpos they'd all move the same
    xpos2 = xpos2 + wiggle2;
  }
}
